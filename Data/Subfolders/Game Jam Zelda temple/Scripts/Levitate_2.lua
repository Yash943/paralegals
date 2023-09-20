local cayou = script.parent
cayou:RotateContinuous(Rotation.New(5,0,5))
while 1==1 do
	cayou:MoveContinuous(Vector3.UP*-50)
	Task.Wait(5)
	cayou:StopMove()
	cayou:MoveContinuous(Vector3.UP*50)
	Task.Wait(5)
	cayou:StopMove()
end