function crearEnemigo()
	global RobotX# = 65
	global RobotY# = 690
	LoadImage(3, "towerDefense_tile248.png")
	CreateSprite(3,3)
	SetSpriteAngle(3,-90)
	SetSpritePosition(3, RobotX#, RobotY#)
endfunction

function enemigo()
	destinoY1# = 580
	if(robotY# <> destinoY1# )
		robotY# = robotY# - 1
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
	destinoX1# = 495
	if(robotX# <> destinoX1# and robotY# = destinoY1#)
		SetSpriteAngle(3,0)
		robotX# = robotX# + 1
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
endfunction
