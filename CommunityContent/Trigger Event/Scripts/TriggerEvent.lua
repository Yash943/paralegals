local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local BEING_OVERLAP_EVENT_NAME = ROOT:GetCustomProperty("BeginOverlap_EventName")
local END_OVERLAP_EVENT_NAME = ROOT:GetCustomProperty("EndOverlap_EventName")
local INTERACTED_EVENT_NAME = ROOT:GetCustomProperty("Interacted_EventName")

function OnBeginOverlap(whichTrigger, other)
	if other:IsA("Player") then
		if BEING_OVERLAP_EVENT_NAME ~= "" then
			Events.Broadcast(BEING_OVERLAP_EVENT_NAME)
		end
	end
end

function OnEndOverlap(whichTrigger, other)
	if other:IsA("Player") then
		if END_OVERLAP_EVENT_NAME ~= "" then
			Events.Broadcast(END_OVERLAP_EVENT_NAME)
		end
	end
end

function OnInteracted(whichTrigger, player)
	if INTERACTED_EVENT_NAME ~= "" then
		Events.Broadcast(INTERACTED_EVENT_NAME)
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
TRIGGER.interactedEvent:Connect(OnInteracted)
