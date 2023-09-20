local TRIGGER = script.parent.parent

-- Let's send a notification to the user telling how many healthpoints they have!

-- Don't forget to include a require() to the EasyNotifications module!
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- We'll pass this in the params to customize the notification icon. Another way would be to create a template in the Templates folder, this way it would be easier to reuse it in other scripts.
local iconHealth = script:GetCustomProperty("IconHealth")

function OnInteracted(whichTrigger, other)
		if other:IsA("Player") then
			EasyNotifications.SendToPlayer(other, "WARNING", "Life status", "You have "..other.hitPoints.." HP!", {icon = iconHealth})
		end
end

TRIGGER.interactedEvent:Connect(OnInteracted)