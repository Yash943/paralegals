local TRIGGER = script.parent

-- Don't forget to include a require() to the EasyNotifications module!
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- These will be passed as custom parameters into the params value of the SendToAll() function
local scifiBuzzDangerWarningAlarm01SFX = script:GetCustomProperty("ScifiBuzzDangerWarningAlarm01SFX")
local iconAlert = script:GetCustomProperty("IconAlert")

-- Let's send a notification to EVERY player in the game!
function OnInteracted(whichTrigger, other)
		if other:IsA("Player") then
			EasyNotifications.SendToAll("WARNING", "CAREFUL!", "Bomb will explose soon.", {sound = scifiBuzzDangerWarningAlarm01SFX, icon = iconAlert})
		end
end

TRIGGER.interactedEvent:Connect(OnInteracted)