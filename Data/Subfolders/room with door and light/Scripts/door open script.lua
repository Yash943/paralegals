local door = script.parent
local switchTrigger = door:FindChildByName("Trigger")

local doorisopen = false


local open = Rotation.New(0, 0, -171)
local close = Rotation.New(0, 0, 98)

local function chengeword()
    if doorisopen == false then
        switchTrigger.interactionLabel ="close door"
    else
        switchTrigger.interactionLabel = "open door"
    end
end

local function opendoor()
 if not doorisopen then
    door:RotateTo(open, 0.5, true)
 else
    door:RotateTo(close, 0.5, true)
 end  
 
 chengeword()

 doorisopen=not doorisopen
end

switchTrigger.interactedEvent:Connect(opendoor)