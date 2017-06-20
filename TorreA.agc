#include "startscreen.agc"
global i=0 //maximo 
global stack = 0

function torreA () 
for t=1 to 4
	torresA [t] = CreateSprite (7)
	SetSpriteVisible  (torresA[t], 0)
	SetSpriteActive (torresA[t], 0)
	SetSpriteSize (torresA [t], 60, 60)
	SetSpritePosition (torresA[t], mouseX, mouseY)	
	SetSpriteShape (torresA[t], 3)
	torres[t].id=t
	torres[t].torre=torresA [t]
	
next t
endfunction

function fijar ()
	if stack > 0
		if ( GetPointerPressed ( ) = 1 )		
			Tx = GetPointerX ( )
			Ty = GetPointerY ( )
			tx=tx-30
			ty=ty-30
			px= Tx
			py= Ty
					
			//camino de la izquierda		
			if Tx>=35 and Tx=<46 and Ty>=593 and Ty<=724
				creartorrea ()
				SetSpriteAngle (torresA[i], -90)
				torres[i].posicion=1
			elseif Tx>=35 and Tx=<67 and Ty>=555 and Ty<=592
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx >=60 and Tx<=470 and Ty>=550 and Ty=<560
				creartorrea ()
				torres[i].posicion=2
			elseif Tx >470 and Tx<=488 and Ty>=542 and Ty=<560
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx >=473 and Tx<=487 and Ty<=541 and ty >=210
				creartorrea()
				SetSpriteAngle (torresA[i], -90)				
				torres[i].posicion=1
			elseif Tx>=473 and tx <=510 and Ty<210 and Ty >=170
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx>510 and tx <1190 and Ty<=175 and Ty >=165
				creartorrea ()
				torres[i].posicion=2
				
			//camino de la derecha	
			elseif tx>=150 and tx <=164 and ty >= 682 and ty <= 724
				creartorreA ()
				SetSpriteAngle (torresA[i], 90)
				torres[i].posicion=0
			elseif Tx>=150 and Tx<=164 and ty >665 and Ty < 682
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				torres[i].posicion=4	
				
			elseif Tx>=165 and Tx<=579 and ty >=666 and Ty <= 676
				creartorreA ()
				torres[i].posicion=3
				SetSpriteAngle (torresA[i], 180)
			
			elseif Tx>=580 and tx<=595 and Ty<665 and Ty >=632
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				torres[i].posicion=4
			elseif Tx>=598 and tx<=610 and Ty<632 and Ty >=301
				creartorreA ()
				SetSpriteAngle (torresA[i], 90)
				torres[i].posicion=0
			elseif Tx>=598 and tx<=615 and Ty>=285 and ty<301
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				torres[i].posicion=4
			elseif Ty>=285 and ty<=301 and tx >615 and tx<1190
				creartorreA ()
				SetSpriteAngle (torresA[i], 180)
				torres[i].posicion=3
			endif
			colisiontorrea ()
			stack=stack-1 
		endif		
	endif
endfunction

function creartorreA ()
	i=i+1	
	SetSpritePosition (torresA[i], px, py)
	SetSpriteVisible (torresA[i],1)
	SetSpriteActive (torresA[i], 1)
	monedas=monedas-5 
endfunction

function colisiontorrea () // para que no se puedan superponer las torres de valor 5
	if i=2
		if GetSpriteCollision(torresA[2], torresa[1])
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif		
	endif
	if i = 3
		if GetSpriteCollision(torresA[3], torresa[2]) OR GetSpriteCollision(torresA[3], torresa[1])			
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif
	endif
	if i = 4
		if GetSpriteCollision(torresA[4], torresa[3]) OR GetSpriteCollision(torresA[4], torresa[2])	OR GetSpriteCollision(torresA[4], torresa[1])	
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif
	endif
endfunction
 
