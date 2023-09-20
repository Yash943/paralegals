--[[
v1.0.0
Template by DreadwoodGames 
Replace any art in the Geo folder or remove if no art is required.
Set the Delay and add the Trigger and the UIContainer to the custom properties of the script.
Write your text on the UI Textbox within the UIContainer.
]]

local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local DELAY = script:GetCustomProperty("Delay")

function OnInteracted(trigger, player)
    UICONTAINER.visibility = Visibility.FORCE_ON
    trigger.isInteractable = false
    Task.Wait(DELAY)
    UICONTAINER.visibility = Visibility.FORCE_OFF
end

TRIGGER.interactedEvent:Connect(OnInteracted)