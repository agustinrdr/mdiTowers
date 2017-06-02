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
			if Tx>=9 and Tx<35 and Ty>=519 and Ty<=724
			creartorreb ()
			SetSpriteAngle (torresb[k], -90)
			elseif Tx >=9 and Tx<=482 and Ty>493 and Ty=<547
			creartorreb ()
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >=140
			SetSpriteAngle (torresb[k], -90)
			creartorreb()
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
			creartorreb ()
			elseif Tx>=160 and Tx<=634 and ty >=676 and Ty <= 704
			creartorreb ()
			SetSpriteAngle (torresb[k], 180)
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=294
			creartorreb ()
			SetSpriteAngle (torresb[k], 90)
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
			creartorreb ()
			SetSpriteAngle (torresb[k], 180)
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
