local cayou = script.parent
cayou:RotateContinuous(Rotation.New(0,0,20))
while 1==1 do
	cayou:MoveContinuous(Vector3.UP*-30)
	Task.Wait(4)
	cayou:StopMove()
	cayou:MoveContinuous(Vector3.UP*30)
	Task.Wait(4)
	cayou:StopMove()
end