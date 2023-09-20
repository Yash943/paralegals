-- others: in the start, Rotation positoin & lightIsOn... (yes others on the start) btw it use for later

-- in the start
local switch = script.parent
local switchTrigger = switch:FindChildByName("Trigger")
local propLightTemplate = script:GetCustomProperty("LightTemplate")

--Rotation positoin

local onRotation = Rotation.New(0, 60, 0)
local offRotation = Rotation.New(0, -20, 0)


--lightIsOn

local lightIsOn = false

--lightisoff

local spawnedLight = nil

-- Update light switch's label
local function UpdateLabel()
--turn the label to turn on light or turn off
if lightIsOn == false then
    switchTrigger.interactionLabel = "Turn on light"
else
    switchTrigger.interactionLabel = "Turn off Light"
  end
end
-------------------------------------------------------------------------------------------------------------


--light spawn & switch move 


--make the lighet spawn in the right place

local lightBulbFolder = script:FindAncestorByName("Lightbulb & Switch")
local bulb = lightBulbFolder:FindDescendantByName("Bulb")
local bulbPosition = bulb:GetWorldPosition()
-- Function to rotate the switch and spawn the light

local function OnSwitchInteraction()
    if not lightIsOn then
        -- move the switch up and create the light
        switch:RotateTo(onRotation, 0.5, true)
        spawnedLight = World.SpawnAsset(propLightTemplate, {position = bulbPosition})
    else
        -- move the switch down and destroy the light
        switch:RotateTo(offRotation, 0.5, true)
        spawnedLight:Destroy()
    end
--call the funtion who chenge the label
    UpdateLabel()
    -- track whether the light is on or off
    lightIsOn = not lightIsOn

end

-- Connect the function to the trigger event
switchTrigger.interactedEvent:Connect(OnSwitchInteraction)