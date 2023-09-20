-- EASY NOTIFICATIONS by Thibault (Thibault#7057) --
--[[ This script is the module that handles the sending of notifications to players. 

Quick reminder of the usage:

Functions:
		EasyNotifications.SendToPlayer(player, type, title, text, [params]) (can be called from client OR server script)
			player
				the Player you want to send the notification to

			type
				the type of notification, must match a template name (see the ReadMe file)

			title
				the title you want to be shown on the notification

			text
				the text you want to be shown in the notification body

			params [optional]
				if you want to customize the notification look directly from the code, you can use the following params:
                icon: AssetReference
                backgroundColor: Color
                primaryColor: Color
                titleColor : Color
                bodyColor: Color
                titleFont: Font
                bodyFont: Font
                sound: AssetReference
                playSound: bool
                duration: int


        EasyNotifications.SendToAll(type, title, text, [params]) (can be called from server script)
            See above for details.

Exemple usage :
    EasyNotifications.SendToAll("WARNING", "Round end", "The round will end in 30 seconds!")
    EasyNotifications.SendToPlayer(player, "SUCCESS", "New power unlocked!", "You unlocked a new magic spell.", {duration = 10, backgroundColor = Color.PURPLE})


You can find more information the ReadMe file!
]]--

-- Hierarchy calls
local sharedNotificationsFolder

while not sharedNotificationsFolder do
    Task.Wait()
    sharedNotificationsFolder = World.FindObjectByName("SharedNotifications")
end

-- Templates
local notificationObject = script:GetCustomProperty("notificationObject")

-- /////////

-- This function is used to convert data to a string (if it's a color, an hex code). See createSharedNotif() below for its usage.
local function convert(data)
    if type(data) == "userdata" and data.type == "Color" then
        return data:ToLinearHex()
    else
        return tostring(data)
    end
end

-- When sending notifications from a server script, Events rates and sizes are an issue as they are limited. 
-- To avoid this, we rather create a networked notification object in a folder that contains all the infos in its properties, and then tell the client to look it up by passing the object id.
local function createSharedNotif(templateName, title, text, params)
    notification = World.SpawnAsset(notificationObject, {parent = sharedNotificationsFolder}) -- Create the notification object in the folder
    Task.Wait()
    notification:SetNetworkedCustomProperty("Title", title) -- Title of the notification is set as a custom property
    notification:SetNetworkedCustomProperty("Body", text) -- Body content of the notification is set as a custom property
    if params then
        local paramsString = ""
        for key, value in pairs(params) do
            paramsString = paramsString .. key .. ":::" .. convert(value) .. ":::"
        end
        notification:SetNetworkedCustomProperty("Params", paramsString) -- Custom params, if present, are encoded as a string in this format "PARAM1:::VALUE1:::PARAM2:::VALUE" and then decoded client-side.
    end
    notification:SetNetworkedCustomProperty("Type", templateName) -- Type of the notification is set as a custom property
    notification.lifeSpan = 10 -- Let's despawn the notification object after a while so we don't flood the networked objects!
    Task.Wait()
    return notification.id -- return the id of the object. This is passed to the client so it can reads the notification data.
end

local Module = {}

-- Call this with EasyNotifications.SendToPlayer() from client or server script.
function Module.SendToPlayer(player, templateName, title, text, params)
    if Environment.IsClient() then -- Check if the function is called from a client script. If so, we can directly use Events.Broadcast() to avoid events rate issues!
        Events.Broadcast("EasyNotifications.Display", templateName, title, text, params)
    else -- Means the function is called from a server script. Because Events.BroadcastToPlayer() is limited in length, we rather create a networked object containing all informations and pass its id to the client.
        Events.BroadcastToPlayer(
            player,
            "EasyNotifications.ServerDisplay",
            createSharedNotif(templateName, title, text, params)
        )
    end
end

-- Call this with EasyNotifications.SendToAll() from server script.
function Module.SendToAll(templateName, title, text, params)
    if Environment.IsServer() then -- Because Events.BroadcastToAllPlayers() is limited in length, we rather create a networked object containing all informations and pass its id to the clients.
        Events.BroadcastToAllPlayers(
            "EasyNotifications.ServerDisplay",
            createSharedNotif(templateName, title, text, params)
        )
    else
    end
end

return Module
