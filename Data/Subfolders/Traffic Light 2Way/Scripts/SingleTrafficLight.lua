local redLight = script:GetCustomProperty("Red"):WaitForObject()
local yellowLight = script:GetCustomProperty("Yellow"):WaitForObject()
local greenLight = script:GetCustomProperty("Green"):WaitForObject()

function SetState(newState)
	if newState == "Green" then
		redLight:SetColor(Color.BLACK)
		yellowLight:SetColor(Color.BLACK)
		greenLight:SetColor(Color.GREEN)

	elseif newState == "Yellow" then
		redLight:SetColor(Color.BLACK)
		yellowLight:SetColor(Color.YELLOW)
		greenLight:SetColor(Color.BLACK)
	else
		redLight:SetColor(Color.RED)
		yellowLight:SetColor(Color.BLACK)
		greenLight:SetColor(Color.BLACK)
	end
end
