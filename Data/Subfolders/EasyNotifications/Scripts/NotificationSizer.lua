-- EASY NOTIFICATIONS by Thibault (Thibault#7057) --
-- This script is attached to every UI notification element. It resizes it in height so we can show really long text!

-- Variables
local UISize = UI.GetScreenSize()

local notification = script.parent
local boxSize
local body = script.parent:FindChildByName("Body")

while not body:ComputeApproximateSize() do
    Task.Wait()
end

-- Resize the text height (used when the Screen Size changes)
local function UpdateNotificationSize()
    boxSize = body:ComputeApproximateSize()
    body.height = boxSize.y + 10
end

-- When the script loads, define the notificaton height by computing the text element height and adding a safe 10px margin
local function INIT()
    boxSize = body:ComputeApproximateSize()
    body.height = boxSize.y + 10
    notification.height = notification.height + boxSize.y - 15
end

-- If we notice a change in Screen Size (eg. going from full screen to windowed mode), we resize the notification.
function Tick()
    if UISize ~= UI.GetScreenSize() then 
        UISize = UI.GetScreenSize()
        UpdateNotificationSize()
    end
end

INIT()
