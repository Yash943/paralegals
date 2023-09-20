local TRIGGER = script.parent

-- Don't forget to include a require() to the EasyNotifications module!
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- Let's send a notification to the player who interacted with this trigger.
-- We also set the duration of the notification and the color of the title to something custom!
function OnInteracted(whichTrigger, other)
		if other:IsA("Player") then
			EasyNotifications.SendToPlayer(other, "DEFAULT", "Nice interaction!", "You interacted with this trigger nicely.", {duration = 10, titleColor = Color.RED})
		end
end

TRIGGER.interactedEvent:Connect(OnInteracted)