local TRIGGER = script.parent

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		print(trigger.name .. ": Begin Trigger Overlap with " .. other.name)
		Events.Broadcast("PopupInfo","Law is broken, Penalty!")
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
