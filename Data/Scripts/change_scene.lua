local TRIGGER = script.parent
other = Player
function OnInteracted(trigger, other)
	if other:IsA("Player") then
		other:TransferToScene("mini_game", {spawnKey = "newstate"})
		print(trigger.name .. ": Trigger Interacted " .. other.name)
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)