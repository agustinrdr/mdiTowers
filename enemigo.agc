function crearEnemigo()
	global RobotX# = 66
	global RobotY# = 690
	global variable = 0
	global destinoX# = 0
	global destinoY# = 0
	LoadImage(3, "towerDefense_tile248.png")
	CreateSprite(3,3)
	SetSpriteAngle(3,-90)
	SetSpritePosition(3, RobotX#, RobotY#)
endfunction

function Menemigo()
	destinoY# = 580
	if(robotY# <> destinoY# )
		robotY# = robotY# - 2
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
	destinoX# = 504
	if(robotX# <> destinoX# and robotY# = destinoY#)
		SetSpriteAngle(3,0)
		robotX# = robotX# + 2
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
	if(RobotX# = 504 and RobotY# = 580)
		variable = 1
	endif
endfunction

function Menemigo2 ()
	destinoY# = 200
	if(robotY# <> destinoY# )
		SetSpriteAngle(3,-90)
		robotY# = robotY# - 2
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
	destinoX# = 1160
	if(robotX# <> destinoX# and robotY# = destinoY#)
		SetSpriteAngle(3,0)
		robotX# = robotX# + 2
		SetSpritePosition(3, RobotX#, RobotY#)
	endif
endfunction

	
