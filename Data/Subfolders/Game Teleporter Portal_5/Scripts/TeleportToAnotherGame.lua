local trigger = script.parent
local DESTINATION_GAME = script:GetCustomProperty("Destination")

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		other:TransferToGame(DESTINATION_GAME)
	end
end

trigger.interactedEvent:Connect(OnInteracted)
