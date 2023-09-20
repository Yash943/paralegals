local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propBeamSource = script:GetCustomProperty("BeamSource"):WaitForObject()

local lightBeamList = {}

local currentBeamTarget = nil

function DrawBeam(beamStart, beamDirection)

	local maxBeamRange = beamStart + beamDirection * 9999
	local raycastResult = World.Raycast(beamStart, maxBeamRange)
	--CoreDebug.DrawLine(beamStart, maxBeamRange, {duration = 0, color = Color.GREEN, thickness = 5})

	local impactPos = maxBeamRange
	if raycastResult ~= nil then
		impactPos = raycastResult:GetImpactPosition()
		--CoreDebug.DrawLine(impactPos, impactPos + Vector3.UP * 500, {duration = 0, color = Color.RED, thickness = 5})
	end

	local newBeamTarget = "nil"
	-- If we hit a surface:
	if raycastResult ~= nil then
		--check if what we hit is reflective
		--print(raycastResult.other.name)
		if (raycastResult.other:IsA("CoreObject") and
			raycastResult.other:GetCustomProperty("Reflective") ~= nil) then
		-- if yes, call DrawBeam, with new direction, from the impact pos.
		-- if no:
			-- Check if we hit a switch
				-- if so, trigger the switch
			-- Draw gfx

			local normal = raycastResult:GetImpactNormal()
			local newBeamDirection = beamDirection + ((beamDirection .. normal) * normal * -2)
			DrawBeam(raycastResult:GetImpactPosition(), newBeamDirection)
		else
			-- not reflective
			if (raycastResult.other:IsA("CoreObject")) then
				newBeamTarget = raycastResult.other.id
			end


			if newBeamTarget ~= currentBeamTarget then
				currentBeamTarget = newBeamTarget
				Events.Broadcast("BeamTargetChanged", currentBeamTarget, propRoot.id)
			end

		end
	else
		if newBeamTarget ~= currentBeamTarget then
			currentBeamTarget = newBeamTarget
			Events.Broadcast("BeamTargetChanged", currentBeamTarget, propRoot.id)
		end
	end
end




function Tick(deltaTime)
	for k,v in pairs(lightBeamList) do 
		v:Destroy()
	end
	lightBeamList = {}

	--Raycast out to see how far beam should extend
	--local beamForward = propRoot:GetWorldTransform():GetForwardVector()
	--local beamStart = propLightBeam:GetWorldPosition()
	--local beamStart = propRoot:GetWorldPosition() + beamForward * 200 + Vector3.UP * 300
	local beamStart = propBeamSource:GetWorldPosition()
	local beamForward = propBeamSource:GetWorldTransform():GetForwardVector()
	DrawBeam(beamStart, beamForward)

	Task.Wait(0.5)
end