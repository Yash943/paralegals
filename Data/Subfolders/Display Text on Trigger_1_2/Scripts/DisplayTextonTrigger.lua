local TRIGGER_VOLUME = script:GetCustomProperty("TriggerVolume"):WaitForObject()
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local OBJECT_TO_CHECK = script:GetCustomProperty("LightNS2"):WaitForObject()
local DELAY = script:GetCustomProperty("Delay")
other = Player
local playersInTrigger = {}

-- Function to check if the object's state is satisfied
function IsObjectStateSatisfied()
    -- Replace this condition with your own logic to check the object's state
    return LightNS2.context.SetState("Red")
end

-- Function to handle when a player enters the trigger volume
function OnBeginOverlap(trigger, other)
    if other:IsA("Player") and IsObjectStateSatisfied() then
        playersInTrigger[other] = true
        UICONTAINER.visibility = Visibility.FORCE_ON
    end
end

-- Function to handle when a player exits the trigger volume
function OnEndOverlap(trigger, other)
    if other:IsA("Player") then
        playersInTrigger[other] = nil
        -- Check if there are still players in the trigger volume
        local anyPlayersInTrigger = next(playersInTrigger) ~= nil
        if not anyPlayersInTrigger or not IsObjectStateSatisfied() then
            UICONTAINER.visibility = Visibility.FORCE_OFF
        end
    end
end

-- Connect the trigger volume's overlap events
TRIGGER_VOLUME.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER_VOLUME.endOverlapEvent:Connect(OnEndOverlap)

-- Optionally, connect the trigger's interacted event to the OnInteracted function
-- TRIGGER.interactedEvent:Connect(OnInteracted)
