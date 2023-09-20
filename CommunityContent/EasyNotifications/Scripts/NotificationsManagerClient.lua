-- EASY NOTIFICATIONS by Thibault (Thibault#7057) --
-- This script handles the notifications on a client-side.

-- DEPENDENCIES

local EaseUI = require(script:GetCustomProperty("EaseUI")) -- thanks to the brillant NicholasForeman for this super-useful dependency!

-- TEMPLATES

local notificationTemplate = script:GetCustomProperty("NotificationTemplate") -- the notification UI element template. Feel free to edit it.

-- HIERARCHY ELEMENTS
local templatesFolder = script:GetCustomProperty("TemplatesFolder"):WaitForObject()
local notificationsPanel = script:GetCustomProperty("NotificationsPanel"):WaitForObject()
local sharedNotificationsFolder = script:GetCustomProperty("SharedNotifications"):WaitForObject()

-- VARIABLES
local currentTime = os.time()
local UISize = UI.GetScreenSize()

local templatesList = {}
local notificationsQueue = {}

local verticalDirection = script.parent.parent:GetCustomProperty("VerticalDirection") or 0
local horizontalDirection = script.parent.parent:GetCustomProperty("HorizontalDirection") or 1
local TrackResources = script.parent.parent:GetCustomProperty("TrackResources") or false
local ExcludeResources = script.parent.parent:GetCustomProperty("ExcludeResources") or nil
local IncludeResources = script.parent.parent:GetCustomProperty("IncludeResources") or nil
local excludeResourcesArray
local includeResourcesArray
local TrackGameRounds = script.parent.parent:GetCustomProperty("TrackGameRounds") or false
local TrackPlayers = script.parent.parent:GetCustomProperty("TrackPlayers") or false
local currentY = 0

local currentSharedNotifID
local readyToCheckDisplay = false

-- USEFUL FUNCTIONS

-- This is used to calculate a notification Y coordinate when it pops on the screen. It relies on the notif height and on the current Y coordinate value (= last notif Y value)
local function calculateY(height)
    if verticalDirection == 0 then -- bottom to top
        currentY = currentY + height
        return UI.GetScreenSize().y - currentY
    else -- top to bottom
        currentY = currentY + height
        return currentY - height
    end
end

-- How many elements are in a lua table? Used in getNotifFromServer() in order to know how many params were passed.
local function countTable(table)
    local count = 0
    for key, value in ipairs(table) do
        count = count + 1
    end
    return count
end

-- Is a value in an array? Used to determine if a resource is excluded/included from the tracking system.
local function inTable(table, variable)
    for key, value in ipairs(table) do
        if value == variable then
            return true
        end
    end
    return false
end

-- MAIN FUNCTIONS

-- This is the final step to show the notification.
local function displayNotification(type, title, text, params)

    -- Check if type exists or set default
    if not templatesList[type] then
        type = "DEFAULT"
    end

    -- First, we get the params (colors, images, sounds) linked to the type of notification used
    local iconImage = templatesList[type]:GetCustomProperty("Icon") or nil
    local backgroundColor = templatesList[type]:GetCustomProperty("BackgroundColor") or Color.WHITE
    local primaryColor = templatesList[type]:GetCustomProperty("PrimaryColor") or Color.GREEN
    local titleColor = templatesList[type]:GetCustomProperty("TitleColor") or Color.BLACK
    local bodyColor = templatesList[type]:GetCustomProperty("BodyColor") or Color.BLACK
    local titleFont = templatesList[type]:GetCustomProperty("TitleFont") or nil
    local bodyFont = templatesList[type]:GetCustomProperty("BodyFont") or nil
    local sound = templatesList[type]:GetCustomProperty("Sound") or nil
    local playSound = templatesList[type]:GetCustomProperty("PlaySound") or true

    local duration = templatesList[type]:GetCustomProperty("Duration") or 5

    -- Let's parse the override params if there are some to override parameters found above
    if params then
        if params.icon then
            iconImage = params.icon
        end

        if params.backgroundColor then
            backgroundColor = params.backgroundColor
        end

        if params.primaryColor then
            primaryColor = params.primaryColor
        end

        if params.titleColor then
            titleColor = params.titleColor
        end

        if params.bodyColor then
            bodyColor = params.bodyColor
        end

        if params.titleFont then
            titleFont = params.titleFont
        end

        if params.bodyFont then
            bodyFont = params.bodyFont
        end

        if params.sound then
            sound = params.sound
        end

        if params.playSound ~= nil then
            playSound = params.playSound
        end

        if params.duration then
            duration = params.duration
        end
    end

    

    local notification = World.SpawnAsset(notificationTemplate, {parent = notificationsPanel}) -- Let's spawn the notification in the client UI!

    if horizontalDirection == 1 then -- Check if notification has to show from left or right side, and place it outside of the notification panel so user can't see it before we animate it.
        notification.x = notification.parent.width
    else
        notification.x = -notification.parent.width
    end

    -- Let's customize the notification according to the notification type / override params

    notification:FindChildByName("Icon"):SetImage(iconImage) -- icon image
    notification:FindChildByName("Icon"):SetColor(primaryColor) -- icon color
    notification:FindChildByName("Border"):SetColor(primaryColor) -- border color

    notification:FindChildByName("Background"):SetColor(backgroundColor) -- background color

    notification:FindChildByName("Title"):SetColor(titleColor) -- title color
    notification:FindChildByName("Body"):SetColor(bodyColor) -- body color

    notification:FindChildByName("Title"):SetFont(titleFont) -- title font
    notification:FindChildByName("Body"):SetFont(bodyFont) -- body font

    -- Let's write the notification content

    notification:FindChildByName("Title").text = title
    notification:FindChildByName("Body").text = text

    Task.Wait()
    
    table.insert(notificationsQueue, {notification, os.time() + duration}) -- We insert the notification in a list along with the timestamp at which it should disappear
    notification.y = calculateY(notification.height) -- Set the notification Y coordinate, taking into account other notifications

    if playSound then -- if the notification has to play a sound, spawn it and play it!
        SFX = World.SpawnAsset(sound, {parent = notification})
        SFX.isSpatializationEnabled = false
        SFX.isOcclusionEnabled = false
        SFX.isAttenuationEnabled = false
        SFX:Play()
    end

    EaseUI.EaseX(notification, 0, 0.5) -- finally, show the notification by sliding it!
end

-- This function reads a notification object sent by the server and calls above function displayNotification() 
local function getNotifFromServer()
    local type
    local title
    local body
    local paramsString
    local params = {}
    local obj 

    while not obj do -- make sure the notification object is loaded
        Task.Wait()
        obj = World.FindObjectById(currentSharedNotifID)
    end

    -- Get data
    type = obj:GetCustomProperty("Type")
    title = obj:GetCustomProperty("Title")
    body = obj:GetCustomProperty("Body")
    paramsString = obj:GetCustomProperty("Params")

    -- If there, params are encoded into a string (PARAM1:::VALUE1:::PARAM2:::VALUE2, etc.). This part decodes it and add each param in the params table.
    if paramsString then
        local tempParams = {CoreString.Split(paramsString, ":::", {removeEmptyResults = true})}
        for i = 1, countTable(tempParams), 2 do
            params[tempParams[i]] = tempParams[i + 1]
        end
    end

    -- Convert colors String to Color
    if params.primaryColor and params.primaryColor.type ~= "Color" then
        params.primaryColor = Color.FromLinearHex(params.primaryColor)
    end

    if params.backgroundColor and params.backgroundColor.type ~= "Color" then
        params.backgroundColor = Color.FromLinearHex(params.backgroundColor)
    end

    if params.titleColor and params.titleColor.type ~= "Color" then
        params.titleColor = Color.FromLinearHex(params.titleColor)
    end

    if params.bodyColor and params.bodyColor.type ~= "Color" then
        params.bodyColor = Color.FromLinearHex(params.bodyColor)
    end

    -- All data is gathered, show the notification!
    displayNotification(type, title, body, params)
end

-- This function updates the currentSharedNotifID value when the client receives a "EasyNotifications.ServerDisplay" event from the server.
-- It then sets readyToCheckDisplay to true to begin fetching the data.
local function updateCurrentSharedNotif(id)
    currentSharedNotifID = id
    readyToCheckDisplay = true
end

-- This function is called whenever a child is addded to the SharedNotifs folder, which allows sending notifications from the server.
-- The function waits for the readyToCheckDisplay variable to be set to true in order to load its data.
local function checkDisplay(folder, notificationObj)
    while not readyToCheckDisplay do
        Task.Wait()
    end

    if notificationObj.id == currentSharedNotifID then
        getNotifFromServer()
    end
    readyToCheckDisplay = false
end

-- This function recalculate every notification Y coordinate.
local function updateNotificationPositions()
    currentY = 0
    for key, value in ipairs(notificationsQueue) do
        EaseUI.EaseY(value[1], calculateY(value[1].height), 0.25)
    end
end

-- This function deletes a notification that has expired.
local function deleteNotification(key, object)
    if horizontalDirection == 1 then
        EaseUI.EaseX(object, object.parent.width, 0.5)
    else
        EaseUI.EaseX(object, -object.parent.width, 0.5)
    end
    Task.Wait(0.5)
    table.remove(notificationsQueue, key)
    object:Destroy()
    updateNotificationPositions()
end

-- Load notification types templates and their properties (duration, sound) and put them in a list to use them later.
local function INIT() 
    for key, value in ipairs(templatesFolder:GetChildren()) do
        templatesList[value.name] = value
    end
end

function Tick()
    if currentTime < os.time() then -- every second, check if notifications time expired. Delete it if so
        for key, value in ipairs(notificationsQueue) do
            if value[2] < os.time() then
                deleteNotification(key, value[1])
            end
        end
        currentTime = os.time()
    end

    if UISize ~= UI.GetScreenSize() then -- every frame, check if Screen Size changed and update notifications positions to fit in the new size.
        UISize = UI.GetScreenSize()
        updateNotificationPositions()
    end
end

INIT()
Events.Connect("EasyNotifications.Display", displayNotification)
Events.Connect("EasyNotifications.ServerDisplay", updateCurrentSharedNotif)
sharedNotificationsFolder.childAddedEvent:Connect(checkDisplay)

-- TRACKING FUNCTIONS
-- The functions below track several events that can happen in the game and send a notification to players. They can be enabled or disabled in EasyNotifications parameters (see ReadMe).

local function onResourceChanged(player, resourceName, newAmount)

    if excludeResourcesArray then -- if we excluded some resources, don't send a notification with them
      if not inTable(excludeResourcesArray, resourceName) then
        displayNotification("RESOURCE", "Resource updated!", "You now have " .. tostring(newAmount) .. " " .. resourceName)
      end
    elseif includeResourcesArray then -- if we included some resources, send a notification for them only
        if inTable(includeResourcesArray, resourceName) then
            displayNotification("RESOURCE", "Resource updated!", "You now have " .. tostring(newAmount) .. " " .. resourceName)
          end
    else -- if we didn't include nor exclude resources, send the notification without verification!
        displayNotification("RESOURCE", "Resource updated!", "You now have " .. tostring(newAmount) .. " " .. resourceName)
    end
end

local function onRoundChange(status)
    if status == 1 then -- round starts
        displayNotification("ROUND_STARTS", "Game starts!", "A new round has started!")
    else -- round ends
        displayNotification("ROUND_ENDS", "Game ends!", "The round ends!")
    end
end

-- TRACKING EVENT LISTENERS
-- Connect the appropriate event listeners to the displaying notification functions above!
if TrackResources then
    Game.GetLocalPlayer().resourceChangedEvent:Connect(onResourceChanged)

    -- Check if exclude resources and include resources were set. If so, create an array to find them later (onResourceChanged())
    if ExcludeResources ~= "" then
        excludeResourcesArray = {CoreString.Split(ExcludeResources, ";")}
    end

    if IncludeResources ~= "" then
        includeResourcesArray = {CoreString.Split(IncludeResources, ";")}
    end
end

if TrackGameRounds then
    Game.roundStartEvent:Connect(onRoundChange, 1)
    Game.roundEndEvent:Connect(onRoundChange, 0)
end
