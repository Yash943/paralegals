
local lightNS1 = script:GetCustomProperty("LightNS1"):WaitForObject()
local lightEW1 = script:GetCustomProperty("LightEW1"):WaitForObject()
local lightNS2 = script:GetCustomProperty("LightNS2"):WaitForObject()
local lightEW2 = script:GetCustomProperty("LightEW2"):WaitForObject()

local greenDuration = script:GetCustomProperty("GreenDuration")
local yellowDuration = script:GetCustomProperty("YellowDuration")
local redSmallDelay = script:GetCustomProperty("RedSmallDelay")

Task.Wait()

lightNS1.context.SetState("Red")
lightNS2.context.SetState("Red")
lightEW1.context.SetState("Red")
lightEW2.context.SetState("Red")

--Initial setup delay where both directions red
Task.Wait(3)

while true do
	lightNS1.context.SetState("Green")
	lightNS2.context.SetState("Green")

	Task.Wait(greenDuration)

	lightNS1.context.SetState("Yellow")
	lightNS2.context.SetState("Yellow")

	Task.Wait(yellowDuration)

	lightNS1.context.SetState("Red")
	lightNS2.context.SetState("Red")

	Task.Wait(redSmallDelay)

	lightEW1.context.SetState("Green")
	lightEW2.context.SetState("Green")
	
	Task.Wait(greenDuration)

	lightEW1.context.SetState("Yellow")
	lightEW2.context.SetState("Yellow")
	
	Task.Wait(yellowDuration)

	lightEW1.context.SetState("Red")
	lightEW2.context.SetState("Red")

	Task.Wait(redSmallDelay)
end