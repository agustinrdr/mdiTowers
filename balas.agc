
type tBullet
	active as integer	//  si está en uso
	spr as integer		//  id de la bala
	x as float
	y as float
	speed as float
	fuego as integer
endtype

global playerBullet as tBullet

function initBullets()
	playerBullet.speed = 12
	LoadImage(11, "bala.png")
	CreateSprite(11, 11)
	SetSpriteSize(11, 60, 60)
	SetSpriteShape(11,3)
	playerBullet.spr = 11
	SetSpriteVisible(playerBullet.spr, 0)

	//para crear 20 copias del sprite
/*	for h = 1 to 20
		playerBullet[h] = playerBullet[0]
		playerBullet[h].spr = CloneSprite(playerBullet[0].spr)
	next h
	*/
endfunction

//Se debería llamar en startscreen si detecta a un enemigo dentro del rango
function playerShoot()
	if playerBullet.active = 1 then exitfunction //dispara de a una bala a la vez
	
	playerBullet.active = 1
	
	//ubicación de la bala
	playerBullet.x = GetSpriteX(torresA[i])+GetSpriteWidth(torresA[i])-60
	playerBullet.y = GetSpriteY(torresA[i])-(GetSpriteHeight(torresA[i]))+60
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)	
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function UpdatePlayerBullet()
	if playerBullet.active = 0 then exitfunction //no se ha disparado
	
	if pos = 0
		playerBullet.x = playerBullet.x-playerBullet.speed
	endif
	if pos = 1
		playerBullet.x = playerBullet.x+playerBullet.speed
	endif
	if pos = 2
		playerBullet.y = playerBullet.y+playerBullet.speed		
	endif
	
	if pos = 3
		playerBullet.y = playerBullet.y-playerBullet.speed
	endif
	
	if pos = 4
		playerBullet.y = playerBullet.y-playerBullet.speed
		playerBullet.x = playerBullet.x-playerBullet.speed
	endif
	if pos = 5
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

function KillPlayerBullet()
	SetSpriteVisible(playerBullet.spr, 0)
	playerBullet.active = 0
endfunction

function enemigoRecibeBala() //función booleana, devuelve 0 o 1
	if playerBullet.active = FALSE	//si no hay bala activa
		exitfunction 0
	endif
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	if GetSpriteCollision(3, playerBullet.spr) //si la bala chocó con el enemigo
			KillPlayerBullet()
			exitfunction 1
	endif
endfunction 0
