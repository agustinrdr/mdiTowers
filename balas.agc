
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
global playerBulletA as tBullet
global playerBulletA2 as tBullet
global playerBulletA3 as tBullet
global playerBulletB as tBullet
global playerBulletB1 as tBullet

function initBullets()
	playerBullet.speed = 4
	playerBulletA.speed = 4
	playerBulletA2.speed = 4
	playerBulletA3.speed = 4
	LoadImage(11, "bala.png")
	CreateSprite(11, 11)
	SetSpriteSize(11, 60, 60)
	SetSpriteShape(11,3)
	playerBullet.spr = 11
	playerBulletA.spr = CloneSprite(11)
	playerBulletA2.spr = CloneSprite(11)
	playerBulletA3.spr = CloneSprite(11)
	SetSpriteVisible(playerBullet.spr, 0)
	SetSpriteVisible(playerBulletA.spr, 0)
	SetSpriteVisible(playerBulletA2.spr, 0)
	SetSpriteVisible(playerBulletA3.spr, 0)
endfunction

function initBullets2 ()
	playerBullet2.speed = 4
	playerBulletB.speed = 4
	playerBulletB1.speed = 4
	LoadImage(12, "bala4.png")
	CreateSprite(12, 12)
	SetSpriteSize(12, 60, 60)
	SetSpriteShape(12,3)
	playerBullet2.spr = 12
	playerBulletB.spr = CloneSprite(12)
	playerBulletB1.spr = CloneSprite(12)
	SetSpriteVisible(playerBullet2.spr, 0)
	SetSpriteVisible(playerBulletB.spr, 0)
	SetSpriteVisible(playerBulletB1.spr, 0)
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
	if playerBulletA.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBulletA.active = 1
	torres[2].bala=playerBulletA
	playerBulletA.posicion=torres[2].posicion
	//ubicación de la bala
	playerBulletA.x = GetSpriteX(torresA[2])+GetSpriteWidth(torresA[2])-60
	playerBulletA.y = GetSpriteY(torresA[2])-(GetSpriteHeight(torresA[2]))+60
	SetSpritePosition(playerBulletA.spr, playerBulletA.x, playerBulletA.y)	
	SetSpriteVisible(playerBulletA.spr, 1)
endfunction

function playerShoota3()
	if playerBulletA2.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBulletA2.active = 1
	torres[3].bala=playerBulletA2
	playerBulletA2.posicion=torres[3].posicion
	//ubicación de la bala
	playerBulletA2.x = GetSpriteX(torresA[3])+GetSpriteWidth(torresA[3])-60
	playerBulletA2.y = GetSpriteY(torresA[3])-(GetSpriteHeight(torresA[3]))+60
	SetSpritePosition(playerBulletA2.spr, playerBulletA2.x, playerBulletA2.y)	
	SetSpriteVisible(playerBulletA2.spr, 1)
endfunction

function playerShoota4()
	if playerBulletA3.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBulletA3.active = 1
	torres[4].bala=playerBulletA3
	playerBulletA3.posicion=torres[4].posicion
	//ubicación de la bala
	playerBulletA3.x = GetSpriteX(torresA[4])+GetSpriteWidth(torresA[4])-60
	playerBulletA3.y = GetSpriteY(torresA[4])-(GetSpriteHeight(torresA[4]))+60
	SetSpritePosition(playerBulletA3.spr, playerBulletA3.x, playerBulletA3.y)	
	SetSpriteVisible(playerBulletA3.spr, 1)
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
	if playerBulletB.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBulletB.active = 1
	torres[6].bala=playerBulletB
	playerBulletB.posicion=torres[6].posicion
	//ubicación de la bala
	playerBulletB.x = GetSpriteX(torresb[2])+GetSpriteWidth(torresb[2])-60
	playerBulletB.y = GetSpriteY(torresb[2])-(GetSpriteHeight(torresb[2]))+60
	SetSpritePosition(playerBulletB.spr, playerBulletB.x, playerBulletB.y)	
	SetSpriteVisible(playerBulletB.spr, 1)
endfunction

function playerShootb3()
	if playerBulletB1.active = 1 then exitfunction //dispara de a una bala a la vez
	playerBulletB1.active = 1
	torres[7].bala=playerBulletB1
	playerBulletB1.posicion=torres[7].posicion
	//ubicación de la bala
	playerBulletB1.x = GetSpriteX(torresb[3])+GetSpriteWidth(torresb[3])-60
	playerBulletB1.y = GetSpriteY(torresb[3])-(GetSpriteHeight(torresb[3]))+60
	SetSpritePosition(playerBulletB1.spr, playerBulletB1.x, playerBulletB1.y)	
	SetSpriteVisible(playerBulletB1.spr, 1)
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

	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)
endfunction

function UpdatePlayerBulletA()
	
	if playerBulletA.active = 0 then exitfunction
	
	if playerBulletA.posicion = 0
		playerBulletA.x = playerBulletA.x-playerBulletA.speed
	endif
	
	if playerBulletA.posicion = 1
		playerBulletA.x = playerBulletA.x+playerBulletA.speed
	endif
	
	if playerBulletA.posicion = 2
		playerBulletA.y = playerBulletA.y+playerBulletA.speed		
	endif
	
	if playerBulletA.posicion = 3
		playerBulletA.y = playerBulletA.y-playerBulletA.speed
	endif
	
	if playerBulletA.posicion = 4
		playerBulletA.y = playerBulletA.y-playerBulletA.speed
		playerBulletA.x = playerBulletA.x-playerBulletA.speed
	endif
	
	if playerBulletA.posicion = 5
		playerBulletA.y = playerBulletA.y+playerBulletA.speed
		playerBulletA.x = playerBulletA.x+playerBulletA.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBulletA.x < 0
		KillPlayerBulletA()
		exitfunction 
	endif
	if playerBulletA.x > 1370
		KillPlayerBulletA()
		exitfunction 
	endif
	if playerBulletA.y < 0
		KillPlayerBulletA()
		exitfunction 
	endif
	if playerBulletA.y > 768
		KillPlayerBulletA()
		exitfunction 
	endif
	
	SetSpritePosition(playerBulletA.spr, playerBulletA.x, playerBulletA.y)
endfunction

function UpdatePlayerBulletA2()
	
	if playerBulletA2.active = 0 then exitfunction
	
	if playerBulletA2.posicion = 0
		playerBulletA2.x = playerBulletA2.x-playerBulletA2.speed
	endif
	
	if playerBulletA2.posicion = 1
		playerBulletA2.x = playerBulletA2.x+playerBulletA2.speed
	endif
	
	if playerBulletA2.posicion = 2
		playerBulletA2.y = playerBulletA2.y+playerBulletA2.speed		
	endif
	
	if playerBulletA2.posicion = 3
		playerBulletA2.y = playerBulletA2.y-playerBulletA2.speed
	endif
	
	if playerBulletA2.posicion = 4
		playerBulletA2.y = playerBulletA2.y-playerBulletA2.speed
		playerBulletA2.x = playerBulletA2.x-playerBulletA2.speed
	endif
	
	if playerBulletA2.posicion = 5
		playerBulletA2.y = playerBulletA2.y+playerBulletA2.speed
		playerBulletA2.x = playerBulletA2.x+playerBulletA2.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBulletA2.x < 0
		KillPlayerBulletA2()
		exitfunction 
	endif
	if playerBulletA2.x > 1370
		KillPlayerBulletA2()
		exitfunction 
	endif
	if playerBulletA2.y < 0
		KillPlayerBulletA2()
		exitfunction 
	endif
	if playerBulletA2.y > 768
		KillPlayerBulletA2()
		exitfunction 
	endif
	
	SetSpritePosition(playerBulletA2.spr, playerBulletA2.x, playerBulletA2.y)
endfunction

function UpdatePlayerBulletA3()
	
	if playerBulletA3.active = 0 then exitfunction
	
	if playerBulletA3.posicion = 0
		playerBulletA3.x = playerBulletA3.x-playerBulletA3.speed
	endif
	
	if playerBulletA3.posicion = 1
		playerBulletA3.x = playerBulletA3.x+playerBulletA3.speed
	endif
	
	if playerBulletA3.posicion = 2
		playerBulletA3.y = playerBulletA3.y+playerBulletA3.speed		
	endif
	
	if playerBulletA3.posicion = 3
		playerBulletA3.y = playerBulletA3.y-playerBulletA3.speed
	endif
	
	if playerBulletA3.posicion = 4
		playerBulletA3.y = playerBulletA3.y-playerBulletA3.speed
		playerBulletA3.x = playerBulletA3.x-playerBulletA3.speed
	endif
	
	if playerBulletA3.posicion = 5
		playerBulletA3.y = playerBulletA3.y+playerBulletA3.speed
		playerBulletA3.x = playerBulletA3.x+playerBulletA3.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBulletA3.x < 0
		KillPlayerBulletA3()
		exitfunction 
	endif
	if playerBulletA3.x > 1370
		KillPlayerBulletA3()
		exitfunction 
	endif
	if playerBulletA3.y < 0
		KillPlayerBulletA3()
		exitfunction 
	endif
	if playerBulletA3.y > 768
		KillPlayerBulletA3()
		exitfunction 
	endif
	
	SetSpritePosition(playerBulletA3.spr, playerBulletA3.x, playerBulletA3.y)
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

function UpdatePlayerBulletB()
	if playerBulletB.active = 0 then exitfunction //no se ha disparado
	
	if playerBulletB.posicion = 0
		playerBulletB.x = playerBulletB.x-playerBulletB.speed
	endif
	if playerBulletB.posicion = 1
		playerBulletB.x = playerBulletB.x+playerBulletB.speed
	endif
	if playerBulletB.posicion = 2
		playerBulletB.y = playerBulletB.y+playerBulletB.speed	
	endif	
	if playerBulletB.posicion = 3
		playerBulletB.y = playerBulletB.y-playerBulletB.speed
	endif	
	if playerBulletB.posicion = 4
		playerBulletB.y = playerBulletB.y-playerBulletB.speed
		playerBulletB.x = playerBulletB.x-playerBulletB.speed
	endif
	if playerBulletB.posicion = 5
		playerBulletB.y= playerBulletB.y+playerBulletB.speed
		playerBulletB.x = playerBulletB.x+playerBulletB.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBulletB.x < 0
		KillPlayerBulletB()
		exitfunction 
	endif
	if playerBulletB.x > 1370
		KillPlayerBulletB()
		exitfunction 
	endif
	if playerBulletB.y < 0
		KillPlayerBulletB()
		exitfunction 
	endif
	if playerBulletB.y > 768
		KillPlayerBulletB()
		exitfunction 
	endif		 
	SetSpritePosition(playerBulletB.spr, playerBulletB.x, playerBulletB.y)
endfunction

function UpdatePlayerBulletB1()
	if playerBulletB1.active = 0 then exitfunction //no se ha disparado
	
	if playerBulletB1.posicion = 0
		playerBulletB1.x = playerBulletB1.x-playerBulletB1.speed
	endif
	if playerBulletB1.posicion = 1
		playerBulletB1.x = playerBulletB1.x+playerBulletB1.speed
	endif
	if playerBulletB1.posicion = 2
		playerBulletB1.y = playerBulletB1.y+playerBulletB1.speed	
	endif	
	if playerBulletB1.posicion = 3
		playerBulletB1.y = playerBulletB1.y-playerBulletB1.speed
	endif	
	if playerBulletB1.posicion = 4
		playerBulletB1.y = playerBulletB1.y-playerBulletB1.speed
		playerBulletB1.x = playerBulletB1.x-playerBulletB1.speed
	endif
	if playerBulletB1.posicion = 5
		playerBulletB1.y= playerBulletB1.y+playerBulletB1.speed
		playerBulletB1.x = playerBulletB1.x+playerBulletB1.speed
	endif
	
	//terminar si sale de los límites de la pantalla
	if playerBulletB1.x < 0
		KillPlayerBulletB1()
		exitfunction 
	endif
	if playerBulletB1.x > 1370
		KillPlayerBulletB1()
		exitfunction 
	endif
	if playerBulletB1.y < 0
		KillPlayerBulletB1()
		exitfunction 
	endif
	if playerBulletB1.y > 768
		KillPlayerBulletB1()
		exitfunction 
	endif		 
	SetSpritePosition(playerBulletB1.spr, playerBulletB1.x, playerBulletB1.y)
endfunction

function KillPlayerBullet()
	SetSpriteVisible(playerBullet.spr, 0)
	playerBullet.active = 0
endfunction

function KillPlayerBulletA()
	SetSpriteVisible(playerBulletA.spr, 0)
	playerBulletA.active = 0
endfunction

function KillPlayerBulletA2()
	SetSpriteVisible(playerBulletA2.spr, 0)
	playerBulletA2.active = 0
endfunction

function KillPlayerBulletA3()
	SetSpriteVisible(playerBulletA3.spr, 0)
	playerBulletA3.active = 0
endfunction

function KillPlayerBullet2()
	SetSpriteVisible(playerBullet2.spr, 0)
	playerBullet2.active = 0
endfunction

function KillPlayerBulletB()
	SetSpriteVisible(playerBulletB.spr, 0)
	playerBulletB.active = 0
endfunction

function KillPlayerBulletB1()
	SetSpriteVisible(playerBulletB1.spr, 0)
	playerBulletB1.active = 0
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

function enemigoRecibeBalaA() //función booleana, devuelve 0 o 1
	if playerBulletA.active = FALSE	//si no hay bala activa
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBulletA.spr)  //si la bala chocó con el enemigo
		vidaenemigo= vidaenemigo-20
		KillPlayerBulletA()
		exitfunction 1
	endif		
endfunction 0

function enemigoRecibeBalaA2() //función booleana, devuelve 0 o 1
	if playerBulletA2.active = FALSE	//si no hay bala activa
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBulletA2.spr)  //si la bala chocó con el enemigo
		vidaenemigo= vidaenemigo-20
		KillPlayerBulletA2()
		exitfunction 1
	endif		
endfunction 0

function enemigoRecibeBalaA3() //función booleana, devuelve 0 o 1
	if playerBulletA3.active = FALSE	//si no hay bala activa
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBulletA3.spr)  //si la bala chocó con el enemigo
		vidaenemigo= vidaenemigo-20
		KillPlayerBulletA3()
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

function enemigoRecibeBalaB()
	if playerBulletB.active = FALSE
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBulletB.spr)	
		vidaenemigo=vidaenemigo-40
		KillPlayerBulletB()
		exitfunction 1	
	endif
endfunction 0

function enemigoRecibeBalaB1()
	if playerBulletB1.active = FALSE
		exitfunction 0
	endif
	
	if GetSpriteActive(3)=0	//si no hay enemigo activo
		exitfunction 0
	endif
	
	if GetSpriteCollision(3, playerBulletB1.spr)	
		vidaenemigo=vidaenemigo-40
		KillPlayerBulletB1()
		exitfunction 1	
	endif
endfunction 0
