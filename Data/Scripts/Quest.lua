local HUD_PANEL = script:GetCustomProperty("HUDQuestPanel"):WaitForObject()
local SHOW_KEYBIND = "q"  -- You can change this keybind to your desired key

-- Function to show/hide the HUD panel
function ToggleHUD()
    if HUD_PANEL.visibility == Visibility.FORCE_Off then
        HUD_PANEL.visibility = Visibility.FORCE_ON
    else
        HUD_PANEL.visibility = Visibility.FORCE_OFF
    end
end

-- Bind the key to toggle the HUD panel
function OnKeyPress(binding)
    if binding == "q" then
        ToggleHUD()
        UI.SetCursorVisible(true)
        print("Key pressed: " .. binding)
        -- Add your custom logic here.
    end
end

Input.bindPressedEvent:Connect(OnKeyPress)
