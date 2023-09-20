local TRIGGER = script.parent.parent

-- Don't forget to include a require() to the EasyNotifications module!
local EasyNotifications = require(script:GetCustomProperty("EasyNotifications"))

-- Let's send multiple notifications to the player at a time and see what happens!
function OnInteracted(whichTrigger, other)
		if other:IsA("Player") then
			EasyNotifications.SendToPlayer(other, "SUCCESS", "Notification number one", "Hey, "..other.name.."!")
            EasyNotifications.SendToPlayer(other, "SUCCESS", "Notification number two", "Hey, "..other.name.."!")
            EasyNotifications.SendToPlayer(other, "SUCCESS", "Notification number three", "Hey, "..other.name.."!")
            EasyNotifications.SendToPlayer(other, "SUCCESS", "Notification number four", "Hey, "..other.name.."!")
            EasyNotifications.SendToPlayer(other, "SUCCESS", "Notification number five", "Hey, "..other.name.."!")
		end
end

TRIGGER.interactedEvent:Connect(OnInteracted)