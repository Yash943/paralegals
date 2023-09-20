-- EASY NOTIFICATIONS by Thibault (Thibault#7057) --

--[[

    v1.1 (06/29/2021)

    EasyNotifications is a CC that lets you easily implement notifications that are totally customizable in your game.
    It contains premade notifications for those who have no idea how to code.
    This readme will go through installation and usage of this framework.

    If you have any question, feel free to reach me on Discord (Thibault#7057)
    Have fun!

    Included dependencies:
        1) EaseUI by NicholasForeman

]]--

--[[    
___________________________

|    FRAMEWORK SETUP      |
___________________________


    1) If not already done, search for "EasyNotifications" template in Project Content, and drag and drop it into the hierarchy.
    2) Click on the EasyNotification folder and search for its custom properties. They are parameters you can change to fit your needs:
        VerticalDirection: defines the vertical order the notifications are shown in. 0 = from bottom to top, 1 = from top to bottom
        HorizontalDirection: defines the horizontal order the notifications are shown in. 0 = from left to right, 1 = from right to left

        The following parameters are handful if you don't know how to code and would like to show notifications for basic Core features.
        TrackResources: if enabled, sends a notification to a player when one of his ressource amount changes.
            ExcludeResources: if you want some resources NOT to be tracked by the system, write their name separated by a semicolon (;). Eg. Money;Gem;Ruby
            IncludeResources: if you want ONLY some resources to be tracked by the system, write their name separated by a semicolon (;). Eg. Diamond;Ruby
            !!! Leave both parameters empty if you don't want to specifically exclude/include any of the resources!
        TrackGameRounds: if enabled, sends a notification to all players when a game round starts or stops.
        TrackPlayers: if enabled, sends a notification to all players when a player leaves or joins the game.
        TrackDeaths: if enabled, sends a notification to all players when a player dies.
    3) (OPTIONAL) Find NotificationsPanel in Client Context > UIClient and move it to wherever you'd like on the screen or resize it to customize where your notifications will be showing!
    4) Setup is done! Refer to the "Framework Usage" section to discover how to send a notification or customize them.
]]--

--[[    
___________________________

|    FRAMEWORK USAGE      |
___________________________


    -- SEND A NOTIFICATION --

    1) Find the EasyNotifications.lua file in Project Content > Imported Content > EasyNotifications and drag and drop it to the custom properties of the script from which you'd like to send a notification.
    2) In the script, call the file with:
        local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))
    3) Now, there are two ways to send a notification :
        
        - 1. TO ALL PLAYERS IN THE GAME
            This is doable from a server script only. Use the below function:

            EasyNotifications.SendToAll(type, title, text, [params])
			type
				the type of notification, must match a template name (see the Framework Customization section)

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
        
        - 2. TO A SPECIFIC PLAYER IN THE GAME
            This is doable from a server script OR a client script. Use the below function:
            
            EasyNotifications.SendToPlayer(player, type, title, text, [params])

    Exemple scripts:
    ---- Client.lua
    local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))
    EasyNotifications.SendToPlayer(Game.GetLocalPlayer(), "SUCCESS", "New success unlocked", "You are the best!")

    ---- Server.lua
    local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))
    local alarmSound = script:GetCustomProperty("ScifiBuzzDangerWarningAlarm01SFX")
    local alarmIcon = script:GetCustomProperty("IconAlert")
    EasyNotifications.SendToAll("WARNING", "MAIN DOOR CLOSING", "Please find shelter inside immediately.", {sound = alarmSound, icon = alarmIcon})

    !!! Please note that sending notifications from a client script is preferable for performance.
    
]]--


--[[    
___________________________

| FRAMEWORK CUSTOMIZATION  |
___________________________


    -- CREATE A NOTIFICATION TEMPLATE --

    Each notification has a type value that allows the framework to retrieve how the notification should look and sound.
    The templates can be found under EasyNotifications > ClientContext > TEMPLATES.
    Many are already present by default, but you can create your own template by copying one and pasting it!

    1) Rename the object to what you'd like. This will become the "Type" of the notification.
    2) Edit the object custom propertie as you'd like.
    You can edit the same properties as you can by code with the params value, meaning:
    Icon, Colors, Fonts, Sound and Duration
    3) Use your new notification type in your code!

    !!! if you need to edit the notification shape, you'll have to find the NotificationTemplate.
    
]]--
