local TRIGGER = script.parent.parent

-- Don't forget to include a require() to the EasyNotifications module!
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- We'll change the icon for this one
local sword = script:GetCustomProperty("Sword")

-- Let's send a notification to the user activating the trigger!
function OnInteracted(whichTrigger, other)
		if other:IsA("Player") then
			EasyNotifications.SendToPlayer(other, "DEFAULT", "It's dangerous to go alone!", "Take this.", {icon = sword})
		end
end

TRIGGER.interactedEvent:Connect(OnInteracted)