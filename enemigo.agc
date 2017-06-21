	//global RobotX# = 66
	//global RobotY# = 690
	global variable = 0
	global destinoX# = 0
	global destinoY# = 0
	global baseX# = 1160
	global baseY# = 200
	global vidaenemigo = 0
	global contadorenemigo = 0
	
function crearEnemigo()
	contadorenemigo = contadorenemigo+1
	vidaenemigo = 30*contadorenemigo
	CreateSprite(3,3)
	SetSpriteAngle(3,-90)
	SetSpritePosition(3, 66, 690)
	SetSpriteShape(3,3)
endfunction

//mueve al enemigo - primera mitad del camino
function Menemigo()	
	
	positionY# = GetSpriteY(3)
	positionX# = GetSpriteX(3)
	
	destinoY# = 580	
	if(GetSpriteY(3) <> destinoY# )
		positionY# = positionY# - 2
		SetSpritePosition(3, positionX#, positionY#)
	endif
	
	destinoX# = 504
	if(positionX# <> destinoX# and positionY# = destinoY#)
		SetSpriteAngle(3,0)		
		positionX# = positionX# + 2
		SetSpritePosition(3, positionX#, positionY#)
	endif
	
	if(positionx# = 504 and positionY#= 580)
		variable = 1
	endif
	
endfunction

//mueve al enemigo - segunda mitad del camino
function Menemigo2 ()
	
	positionY# = GetSpriteY(3)
	positionX# = GetSpriteX(3)
	
	destinoY# = 200
	if(positionY#  <> destinoY# )
		SetSpriteAngle(3,-90)
		positionY#  = positionY#  - 2
		SetSpritePosition(3, positionX# , positionY#)
	endif
	
	destinoX# = 1160
	if(positionX#  <> destinoX# and positionY# = destinoY#)
		SetSpriteAngle(3,0)
		positionX#  = positionX#  + 2
		SetSpritePosition(3, positionX# , positionY# )
	endif
	
endfunction

//Si llega a la base, se resta una vida y vuelve al inicio
function LlegaALaBase ()
	
	positionY# = GetSpriteY(3)
	positionX# = GetSpriteX(3)

	if (positionX#  = baseX# and positionY#  = baseY#)
		vidas = vidas-1
		if vidas = 0
			SetSpriteVisible(3,0) //si no hay vidas esconde al enemigo
		endif
		variable=0
		SetSpriteAngle(3,-90)
		SetSpritePosition(3, 66 , 690)
	endif
				
endfunction	

// Mueve el enemigo una vez iniciado con crearEnemigo()
function movEnemigos()
		
		if variable = 0
			Menemigo()
		endif
		if variable = 1
			Menemigo2()
		endif
		
endfunction

function killEnemy()
	DeleteSprite(3)
	puntuacion=puntuacion+100
	monedas = monedas + 5
	variable=0
	KillPlayerBullet()
	KillPlayerBulletA()
	KillPlayerBulletA2()
	KillPlayerBulletA3()
	KillPlayerBullet2()
	KillPlayerBulletB()
	KillPlayerBulletB1()
endfunction
