local cayou = script.parent
cayou:RotateContinuous(Rotation.New(0,5,10))
while 1==1 do
	cayou:MoveContinuous(Vector3.UP*-10)
	Task.Wait(3)
	cayou:StopMove()
	cayou:MoveContinuous(Vector3.UP*10)
	Task.Wait(3)
	cayou:StopMove()
end