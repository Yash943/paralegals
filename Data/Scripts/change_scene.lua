local TRIGGER = script.parent

function OnInteracted(trigger, other)
	if other:IsA("Player") then
		other:TranferToScene("mini_game', {spawnKey = "transfer"})
		print(trigger.name .. ": Trigger Interacted " .. other.name)
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)
