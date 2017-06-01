	global RobotX# = 66
	global RobotY# = 690
	global variable = 0
	global destinoX# = 0
	global destinoY# = 0
	global baseX# = 1160
	global baseY# = 200

function crearEnemigo()
	LoadImage(3, "towerDefense_tile248.png")
	CreateSprite(3,3)
	SetSpriteAngle(3,-90)
	SetSpritePosition(3, RobotX#, RobotY#)
endfunction

//mueve al enemigo - primera mitad del camino
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

//mueve al enemigo - segunda mitad del camino
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


//Si llega a la base, se resta una vida y vuelve al inicio
function LlegaALaBase ()

	if (robotX# = baseX# and robotY# = baseY#)
		vidas = vidas-1

			variable=0
			RobotX# = 66
			RobotY# = 690
			SetSpriteAngle(3,-90)
			SetSpritePosition(3, RobotX#, RobotY#)			

	endif
				
endfunction
	

function movEnemigos()
	// Mueve el enemigo una vez iniciado con crearEnemigo()
		if variable = 0
			Menemigo()
		endif
		if variable = 1
			Menemigo2()
		endif
		
endfunction
	
