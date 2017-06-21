#include "startscreen.agc"
global k=0 //maximo 
global stack2= 0

function torreb () 		
for t=1 to 3
	torresB [t] = CreateSprite (8)
	SetSpriteVisible  (torresb[t], 0)
	SetSpriteActive (torresb[t], 0)
	SetSpriteSize (torresb [t], 60, 60)
	SetSpritePosition (torresb[t], mouseX, mouseY)	
	SetSpriteShape (torresB[t], 3)
	u=t+4
	torres[u].id=t
	torres[u].torre=torresB[t]
	
next t
endfunction

function fijar2 ()
	if stack2 > 0
		if ( GetPointerPressed ( ) = 1 )		
			Tx = GetPointerX ( )
			Ty = GetPointerY ( )
			tx=tx-30
			ty=ty-30
			px= Tx
			py= Ty
			
//camino de la izquierda		
			if Tx>=35 and Tx=<46 and Ty>=593 and Ty<=724
				creartorreb ()
				SetSpriteAngle (torresb [k], -90)
				SetSpriteAngle (12, -90)
				torres[k+4].posicion=1
				ponerbotones ()
			elseif Tx>=35 and Tx=<67 and Ty>=555 and Ty<=592
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				SetSpriteAngle (12, -45)
				torres[k+4].posicion=5
				ponerbotones ()
			elseif Tx >=60 and Tx<=470 and Ty>=550 and Ty=<560
				creartorreb ()
				torres[k+4].posicion=2
				ponerbotones ()
			elseif Tx >470 and Tx<=488 and Ty>=542 and Ty=<560
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				SetSpriteAngle (12, -45)
				torres[k+4].posicion=5
				ponerbotones ()
			elseif Tx >=473 and Tx<=487 and Ty<=541 and ty >=210
				creartorreb()
				SetSpriteAngle (torresb [k], -90) 		
				SetSpriteAngle (12, -90)	
				torres[k+4].posicion=1
				ponerbotones ()
			elseif Tx>=473 and tx <=510 and Ty<210 and Ty >=170
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				SetSpriteAngle (12, -45)
				torres[k+4].posicion=5
				ponerbotones ()
			elseif Tx>510 and tx <1190 and Ty<=175 and Ty >=165
				creartorreb ()
				torres[k+4].posicion=2
				ponerbotones ()
			//camino de la derecha	
			elseif tx>=150 and tx <=164 and ty >= 682 and ty <= 724
				creartorreb ()
				SetSpriteAngle (torresb [k], 90)
				SetSpriteAngle (12, 90)
				torres[k+4].posicion=0
				ponerbotones ()
			elseif Tx>=150 and Tx<=164 and ty >665 and Ty < 682
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				SetSpriteAngle (12, 135)
				torres[k+4].posicion=4	
				ponerbotones ()
			elseif Tx>=165 and Tx<=579 and ty >=666 and Ty <= 676
				creartorreb ()
				torres[k+4].posicion=3
				SetSpriteAngle (torresb [k], 180)
				SetSpriteAngle (12, 180)
				ponerbotones ()
			elseif Tx>=580 and tx<=595 and Ty<665 and Ty >=632
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				SetSpriteAngle (12, 135)
				torres[k+4].posicion=4
				ponerbotones ()
			elseif Tx>=598 and tx<=610 and Ty<632 and Ty >=301
				creartorreb ()
				SetSpriteAngle (torresb [k], 90)
				SetSpriteAngle (12, 90)
				torres[k+4].posicion=0
				ponerbotones ()
			elseif Tx>=598 and tx<=615 and Ty>=285 and ty<301
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				torres[k+4].posicion=4
				ponerbotones ()
			elseif Ty>=285 and ty<=301 and tx >615 and tx<1190
				creartorreb ()
				SetSpriteAngle (torresb [k], 180)
				SetSpriteAngle (12, 180)
				torres[k+4].posicion=3
				ponerbotones ()
			endif
		colisiontorreb ()
		stack2=stack2-1	
		ponerbotones ()
		endif
	endif
endfunction	

function creartorreb ()
		k=k+1
		SetSpritePosition (torresB[k], px, py)
		SetSpriteVisible (torresB[k],1)
		SetSpriteActive (torresB[k], 1)
		monedas=monedas-10 
endfunction

function colisiontorreb () // para que no se puedan superponer las torres de valor 10
	if k=2
		if GetSpriteCollision(torresB[k], torresB[k-1])
			SetSpriteVisible (torresb[k],0)
			SetSpriteActive (torresb[k], 0)
			monedas=monedas+10
			k=k-1
		endif
	endif
	if k = 3
		if GetSpriteCollision(torresb[k], torresb[k-1]) OR GetSpriteCollision(torresb[k], torresb[k-2])
			SetSpriteVisible (torresb[k],0)
			SetSpriteActive (torresb[k], 0)
			monedas=monedas+10
			k=k-1
		endif
	endif
endfunction

