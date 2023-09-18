--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]


local propVehicle = script.parent
local propTrackMarkers = script:GetCustomProperty("TrackMarkers"):WaitForObject()


local targetList = propTrackMarkers:GetChildren()
local currentTargetIndex = 1
local currentOffset = Vector3.ZERO
local targetRadius = 2000



function RoboDriver(vehicle, params)
	local targetPos = targetList[currentTargetIndex]:GetWorldPosition() + currentOffset
	local vehiclePos = propVehicle:GetWorldPosition()
	targetPos.z = 0
	vehiclePos.z = 0

	local targetVector = targetPos - vehiclePos
	local carVector = propVehicle:GetWorldRotation() * Vector3.FORWARD

	--[[
	-- Uncomment this to see where vehicles are trying to go!
	
	CoreDebug.DrawSphere(targetPos, targetRadius, {duration = 0})

	CoreDebug.DrawLine(
		propVehicle:GetWorldPosition() + Vector3.UP * 200,
		propVehicle:GetWorldPosition() + carVector * 1000 + Vector3.UP * 200,
		{duration = 0, thickness = 5, color = Color.GREEN})
	
	
	CoreDebug.DrawLine(
		propVehicle:GetWorldPosition() + Vector3.UP * 200,
		propVehicle:GetWorldPosition() + targetVector * 1000 + Vector3.UP * 200,
		{duration = 0, thickness = 5, color = Color.CYAN})
	]]
	
	local steering = (targetVector:GetNormalized() ^ carVector:GetNormalized() ).z
	local isFacing = (targetVector:GetNormalized() .. carVector:GetNormalized() ) > 0
	
	params.isHandbrakeEngaged = false
	params.throttleInput = 1.0
	
	if isFacing then
		params.steeringInput = -steering
	else
		params.steeringInput = -steering * 10000
	end

	if targetVector.size < targetRadius then
		currentTargetIndex = currentTargetIndex + 1
		local rs = RandomStream.New()
		currentOffset = rs:GetVector3() * targetRadius/2
		if currentTargetIndex > #targetList then
			currentTargetIndex = 1
		end
	end
end



propVehicle.serverMovementHook:Connect(RoboDriver)

