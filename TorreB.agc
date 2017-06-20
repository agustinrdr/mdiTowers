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
	SetSpriteShape (torresB[t], 1)
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
			
			if Tx>=9 and Tx=<35 and Ty>=549 and Ty<=724
				creartorreb ()
				SetSpriteAngle (torresb [k], -90)				
				torres[k+4].posicion=1
			elseif Tx>=9 and Tx<77 and Ty>=519 and Ty<=550
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				torres[k+4].posicion=5
			elseif Tx >=9 and Tx<=440 and Ty>519 and Ty=<547
				creartorreb ()
				torres[k+4].posicion=2
			elseif Tx >=445 and Tx<=482 and Ty>=520 and Ty=<547
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				torres[k+4].posicion=5
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >210
				creartorreb()
				SetSpriteAngle (torresb [k], -90)
				torres[k+4].posicion=1
			elseif Tx>453 and tx <=482 and Ty<=210 and Ty >=140
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				torres[k+4].posicion=5
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
				creartorreb ()
				torres[k+4].posicion=2 
			elseif Tx>=160 and Tx<=580 and ty >=676 and Ty <= 705
				creartorreb ()
				SetSpriteAngle (torresb [k], 180)
				torres[k+4].posicion=3
			elseif Tx>580 and Tx<=634 and ty >650 and Ty <= 704
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				torres[k+4].posicion=4	
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=319
				creartorreb ()
				SetSpriteAngle (torresb [k], 90)
				torres[k+4].posicion=0
			elseif Tx>=606 and tx<=635 and Ty<319 and Ty >=293
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				torres[k+4].posicion=4
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
				creartorreb ()
				SetSpriteAngle (torresb [k], 180)
				torres[k+4].posicion=3
			endif
		colisiontorreb ()
		stack2=stack2-1	
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

