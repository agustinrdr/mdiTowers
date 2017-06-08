
type tBullet
	active as integer	//  Is the bullet currently in use
	spr as integer		//  The sprite ID of the bullet
	x as float			//  The horizontal position of the bullet
	y as float			//  The vertical position of the bullet
	speed as float		/*  The speed that the bullet can move
							Because we have put the speed variable in the UDT instead of
							having a separate variable for speed, it means that each bullet could
							potentially move at a different speed.  This hasn't been included
							yet but it is ready for you to implement. */
endtype

global playerBullet as tBullet

function initBullets()
	playerBullet.speed = 12
	//load player bullet from the atlas texture and create sprite
	LoadImage(11, "bala.png")
	CreateSprite(11, 11)
	playerBullet.spr = 11
	SetSpriteVisible(playerBullet.spr, 0)

	//create 20 copies of the bullet sprite
/*	for k = 1 to 20
		playerBullet[k] = playerBullet[0]
		playerBullet[k].spr = CloneSprite(playerBullet[0].spr)
	next k
	*/
endfunction

//This gets called from 'input.agc' if the shoot button is pressed
function playerShoot()
	if playerBullet.active = 1 then exitfunction //In Space Invaders the player can only fire one bullet at a time 
	
	playerBullet.active = 1
	//position bullet just above the players turret
	playerBullet.x = GetSpriteX(torresA[i])+GetSpriteWidth(torresA[i])-94
	playerBullet.y = GetSpriteY(torresA[i])-(GetSpriteHeight(torresA[i]))+26
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)
	SetSpriteVisible(playerBullet.spr, 1)
endfunction

function UpdatePlayerBullet()
	if playerBullet.active = 0 then exitfunction //The bullet hasn't been fired so nothing to do here
	
	playerBullet.x = playerBullet.x-playerBullet.speed
	//playerBullet.y = playerBullet.y-playerBullet.speed //Update the position of the bullet
	
	if playerBullet.x < 30 //Bullet has gone off the top of the screen
		KillPlayerBullet()
		exitfunction 
	endif
	if playerBullet.y < 30 //Bullet has gone off the top of the screen
		KillPlayerBullet()
		exitfunction 
	endif
	
	
	/*
	//Check to see if the player Bullet has collided with a base
	for k = 0 to 3
		if GetSpriteCollision(playerBullet.spr, base[k]) = FALSE
			continue  /* 	The 'continue' keyword is a confusingly named one.
							It is a premature 'next' command in much the same way that
							'exitfunction' is a premature 'endfunction' command.
							In this case we will restart the loop with the next value of k */
		//endif
		//Bullet has hit a base so kill the bullet
		//KillPlayerBullet()
		//exitfunction // no point checking the other bases so we can leave this function now
	//next k
	
	//Now that the bullets position has been calculated - let's show it
	SetSpritePosition(playerBullet.spr, playerBullet.x, playerBullet.y)
endfunction

function KillPlayerBullet()
	SetSpriteVisible(playerBullet.spr, 0)
	playerBullet.active = 0
endfunction
/*
function GetEnemyHit(x,y)
	if playerBullet.active = FALSE
		exitfunction FALSE // Player bullet has not been fired so no point checking collision
	endif
	if enemy[x,y].alive = FALSE
		exitfunction FALSE // Enemy is dead so no point checking for collision
	endif
	if GetSpriteCollision(enemy[x,y].spr, playerBullet.spr) // bullet has hit enemy
		KillPlayerBullet()
		exitfunction TRUE
	endif
endfunction FALSE
*/
