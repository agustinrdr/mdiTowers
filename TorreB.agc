#include "startscreen.agc"
global k=0 //maximo 
global stack2= 0
global Px as float
global Py as float
function torreb () 		
if  monedas >= 10
	k=k+1
	torresB [k] = CreateSprite (8)
	SetSpriteVisible  (torresB[k], 0)
	SetSpriteActive (torresB[k], 0)
	SetSpritePosition (torresB[k], mouseX, mouseY)	
	SetSpriteSize (torresB [k], 60, 60)
	stack2 = stack2 + 1	
	monedas=monedas-10 	
	
endif
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
				pos = 1
			elseif Tx>=9 and Tx<77 and Ty>=519 and Ty<=550
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				pos = 1	
			elseif Tx >=9 and Tx<=440 and Ty>493 and Ty=<547
				creartorreb ()
				pos=2
			elseif Tx >=445 and Tx<=482 and Ty>=520 and Ty=<547
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				pos=2	
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >210
				SetSpriteAngle (torresb [k], -90)
				creartorreb()
				pos=1	
			elseif Tx>453 and tx <=482 and Ty<=210 and Ty >=140
				creartorreb ()
				SetSpriteAngle (torresb [k], -45)
				pos=1	
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
				creartorreb ()
				pos=2
			elseif Tx>=160 and Tx<=580 and ty >=676 and Ty <= 705
				creartorreb ()
				pos=3
				SetSpriteAngle (torresb [k], 180)
			elseif Tx>580 and Tx<=634 and ty >650 and Ty <= 704
				creartorreb ()
				pos=3
				SetSpriteAngle (torresb [k], 135)	
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=319
				creartorreb ()
				SetSpriteAngle (torresb [k], 90)
				pos=0
			elseif Tx>=606 and tx<=635 and Ty<319 and Ty >=293
				creartorreb ()
				SetSpriteAngle (torresb [k], 135)
				pos=0
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
				creartorreb ()
				SetSpriteAngle (torresb [k], 180)
				pos = 3
			else
				monedas=monedas+10
				DeleteSprite (torresb [k])
				k=k-1
			endif
		stack2=stack2-1	
		endif
	endif
endfunction	

function creartorreb ()
		SetSpritePosition (torresB[k], px, py)
		SetSpriteVisible (torresB[k],1)
		SetSpriteActive (torresB[k], 1)	
endfunction
function colisiontorreb () // para que no se puedan superponer las torres de valor 10
	if k=2
		if GetSpriteCollision(torresB[k], torresB[k-1])
			monedas=monedas+10
			DeleteSprite (torresB [K])
			k=k-1
		endif
	endif
	if k = 3
		if GetSpriteCollision(torresb[k], torresb[k-1])
			monedas=monedas+10
			DeleteSprite (torresb [k])
			k=k-1
		elseif GetSpriteCollision(torresb[k], torresb[k-2])
			monedas=monedas+5
			DeleteSprite (torresb [k])
			k=k-1
		endif
	endif
endfunction

