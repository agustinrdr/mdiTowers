
type tBullet
	active as integer	//  si está en uso
	spr as integer		//  id de la bala
	x as float
	y as float
	speed as float
	posicion as integer
endtype

global playerBullet as tBullet
global playerBullet2 as tBullet

function initBullets()
	playerBullet.speed = 8
	LoadImage(11, "bala.png")
	CreateSprite(11, 11)
	SetSpriteSize(11, 60, 60)
	SetSpriteShape(11,3)
	playerBullet.spr = 11
	SetSpriteVisible(playerBullet.spr, 0)
endfunction

function initBullets2 ()
	playerBullet2.speed = 6
	LoadImage(12, "bala3.png")
	CreateSprite(12, 12)
	SetSpriteSize(12, 60, 60)
	SetSpriteShape(12,3)
	playerBullet2.spr = 12
	SetSpriteVisible(playerBullet2.spr, 0)
endfunction

//Se debería llamar en startscreen, si detecta a un enemigo dentro del rango
function playerShoota1()	
	if playerBullet.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet.active = 1
	torres[1].bala=playerBullet
	playerBullet.posicion=torres[1].posicion
	
	//ubicación de la bala
	playerBullet.x = GetSpriteX(torresA[1])+GetSpriteWidth(torresA[1])-60
	playerBullet.y = GetSpriteY(torresA[1])-(GetSpriteHeight(torresA[1]))+60
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)	
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function playerShoota2()
	if playerBullet.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet.active = 1
	torres[2].bala=playerBullet
	playerBullet.posicion=torres[2].posicion
	//ubicación de la bala
	playerBullet.x = GetSpriteX(torresA[2])+GetSpriteWidth(torresA[2])-60
	playerBullet.y = GetSpriteY(torresA[2])-(GetSpriteHeight(torresA[2]))+60
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)	
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function playerShoota3()
	if playerBullet.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet.active = 1
	torres[3].bala=playerBullet
	playerBullet.posicion=torres[3].posicion
	//ubicación de la bala
	playerBullet.x = GetSpriteX(torresA[3])+GetSpriteWidth(torresA[3])-60
	playerBullet.y = GetSpriteY(torresA[3])-(GetSpriteHeight(torresA[3]))+60
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)	
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function playerShoota4()
	if playerBullet.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet.active = 1
	torres[4].bala=playerBullet
	playerBullet.posicion=torres[4].posicion
	//ubicación de la bala
	playerBullet.x = GetSpriteX(torresA[4])+GetSpriteWidth(torresA[4])-60
	playerBullet.y = GetSpriteY(torresA[4])-(GetSpriteHeight(torresA[4]))+60
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)	
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function playerShootb1()
	torres[5].bala=playerBullet2
	playerBullet2.posicion=torres[5].posicion
	if playerBullet2.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet2.active = 1
	//ubicación de la bala
	playerBullet2.x = GetSpriteX(torresb[1])+GetSpriteWidth(torresb[1])-60
	playerBullet2.y = GetSpriteY(torresb[1])-(GetSpriteHeight(torresb[1]))+60
	SetSpritePosition(playerBullet2.spr, playerBullet2.x, playerBullet2.y)	
	SetSpriteVisible(playerBullet2.spr, 1)
endfunction

function playerShootb2()
	if playerBullet2.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet2.active = 1
	torres[6].bala=playerBullet2
	playerBullet2.posicion=torres[6].posicion
	//ubicación de la bala
	playerBullet2.x = GetSpriteX(torresb[2])+GetSpriteWidth(torresb[2])-60
	playerBullet2.y = GetSpriteY(torresb[2])-(GetSpriteHeight(torresb[2]))+60
	SetSpritePosition(playerBullet2.spr, playerBullet2.x, playerBullet2.y)	
	SetSpriteVisible(playerBullet2.spr, 1)
endfunction

function playerShootb3()
	if playerBullet2.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBullet2.active = 1
	torres[7].bala=playerBullet2
	playerBullet2.posicion=torres[7].posicion
	//ubicación de la bala
	playerBullet2.x = GetSpriteX(torresb[3])+GetSpriteWidth(torresb[3])-60
	playerBullet2.y = GetSpriteY(torresb[3])-(GetSpriteHeight(torresb[3]))+60
	SetSpritePosition(playerBullet2.spr, playerBullet2.x, playerBullet2.y)	
	SetSpriteVisible(playerBullet2.spr, 1)
endfunction

function UpdatePlayerBullet()
	if playerBullet.active = 0 then exitfunction //no se ha disparado
	
	if playerBullet.posicion = 0
		playerBullet.x = playerBullet.x-playerBullet.speed
	endif
	
	if playerBullet.posicion = 1
		playerBullet.x = playerBullet.x+playerBullet.speed
	endif
	
	if playerBullet.posicion = 2
		playerBullet.y = playerBullet.y+playerBullet.speed		
	endif
	
	if playerBullet.posicion = 3
		playerBullet.y = playerBullet.y-playerBullet.speed
	endif
	
	if playerBullet.posicion = 4
		playerBullet.y = playerBullet.y-playerBullet.speed
		playerBullet.x = playerBullet.x-playerBullet.speed
	endif
	
	if playerBullet.posicion = 5
		playerBullet.y = playerBullet.y+playerBullet.speed
		playerBullet.x = playerBullet.x+playerBullet.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBullet.x < 0
		KillPlayerBullet()
		exitfunction 
	endif
	if playerBullet.x > 1370
		KillPlayerBullet()
		exitfunction 
	endif
	if playerBullet.y < 0
		KillPlayerBullet()
		exitfunction 
	endif
	if playerBullet.y > 768
		KillPlayerBullet()
		exitfunction 
	endif		

	/*
	//Para ver si la bala choca con una torre
		for l = 0 to 5
			if GetSpriteExists(torresa[l]) = 0
				exitfunction			
			elseif i = l OR GetSpriteCollision(playerBullet.spr, torresa[l]) = 0
				continue  //Se reinicia el bucle con el siguiente valor de l 
			else
			//Chocó con otra torre así que eliminamos la bala
			KillPlayerBullet()
			exitfunction
			endif
		next l
	*/
	
	//actualiza la posición de la bala
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)
endfunction

function UpdatePlayerBullet2()
	if playerBullet2.active = 0 then exitfunction //no se ha disparado
	
	if playerBullet2.posicion = 0
		playerBullet2.x = playerBullet2.x-playerBullet2.speed
	endif
	if playerBullet2.posicion = 1
		playerBullet2.x = playerBullet2.x+playerBullet2.speed
	endif
	if playerBullet2.posicion = 2
		playerBullet2.y = playerBullet2.y+playerBullet2.speed	
	endif	
	if playerBullet2.posicion = 3
		playerBullet2.y = playerBullet2.y-playerBullet2.speed
	endif	
	if playerBullet2.posicion = 4
		playerBullet2.y = playerBullet2.y-playerBullet2.speed
		playerBullet2.x = playerBullet2.x-playerBullet2.speed
	endif
	if playerBullet2.posicion = 5
		playerBullet2.y= playerBullet2.y+playerBullet2.speed
		playerBullet2.x = playerBullet2.x+playerBullet2.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBullet2.x < 0
		KillPlayerBullet2()
		exitfunction 
	endif
	if playerBullet2.x > 1370
		KillPlayerBullet2()
		exitfunction 
	endif
	if playerBullet2.y < 0
		KillPlayerBullet2()
		exitfunction 
	endif
	if playerBullet2.y > 768
		KillPlayerBullet2()
		exitfunction 
	endif		 
	SetSpritePosition(playerBullet2.spr, playerBullet2.x, playerBullet2.y)
endfunction

function KillPlayerBullet()
	SetSpriteVisible(playerBullet.spr, 0)
	playerBullet.active = 0
endfunction

function KillPlayerBullet2()
	SetSpriteVisible(playerBullet2.spr, 0)
	playerBullet2.active = 0
endfunction

function enemigoRecibeBala() //función booleana, devuelve 0 o 1
	if playerBullet.active = FALSE	//si no hay bala activa
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBullet.spr)  //si la bala chocó con el enemigo
		vidaenemigo= vidaenemigo-20
		KillPlayerBullet()
		exitfunction 1
	endif		
endfunction 0

function enemigoRecibeBala2()
	if playerBullet2.active = FALSE
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBullet2.spr)	
		vidaenemigo=vidaenemigo-40
		KillPlayerBullet2()
		exitfunction 1	
	endif
endfunction 0

