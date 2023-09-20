-- EASY NOTIFICATIONS by Thibault (Thibault#7057) --
-- This script is used to track players dying and sends a notification if enabled in EasyNotifications parameters.

-- Dependencies
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- Variables
local TrackDeaths = script.parent:GetCustomProperty("TrackDeaths") or false
local TrackPlayers = script.parent:GetCustomProperty("TrackPlayers") or false

-- TRACKING FUNCTIONS
local function deathNotif(player)
    EasyNotifications.SendToAll("DEATH", player.name .. " died!", "Press F to pay respects.")
end

local function onPlayerChange(player, status)
    if status == 1 then -- player joined
        EasyNotifications.SendToAll("PLAYER_JOINED", "A new player joined!", player.name .. " joined the game!")
    else -- player left
        EasyNotifications.SendToAll("PLAYER_LEFT", "A player left!", player.name .. " left the game :(")
    end
end

-- TRACKING EVENT LISTENERS
if TrackDeaths then -- If enabled in EasyNotifications parameters, track players dying.
    local function onPlayerJoined(player)
        player.diedEvent:Connect(deathNotif)
    end

    Game.playerJoinedEvent:Connect(onPlayerJoined)
end

if TrackPlayers then
    Game.playerJoinedEvent:Connect(onPlayerChange, 1)
    Game.playerLeftEvent:Connect(onPlayerChange, 0)
end