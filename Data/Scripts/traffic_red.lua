local tlc = World.FindObjectByName("LightNS2") -- Replace with the actual traffic light object
local gameObjectToPopUp = World.FindObjectByName("YourGameObjectName") -- Replace with your game object's name

local popUpHeight = 2 -- Adjust this value to determine how much the object should pop up
local popUpSpeed = 5 -- Adjust this value to control the speed of the pop-up animation

local isPoppingUp = false -- Track whether the object is currently popping up

function OnTriggerEnter(other)
    if other:IsA("Player") then
        TrafficLightSignal()
    end
end

function OnTriggerExit(other)
    if other:IsA("Player") then
        if tlc.context.GetState() == "Red" then
            isPoppingUp = true
        else
            isPoppingUp = false
        end
    end
end

function Tick(deltaTime)
    if isPoppingUp then
        -- Calculate the new position with the object popped up
        local newPosition = gameObjectToPopUp:GetWorldPosition() + Vector3.UP * popUpHeight * deltaTime * popUpSpeed

        -- Set the new position to make the object pop up
        gameObjectToPopUp:SetWorldPosition(newPosition)
    end
end
