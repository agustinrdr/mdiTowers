#include "startscreen.agc"
global i=0 //maximo 
global stack = 0
function torreA () 
if  monedas >= 5
	i=i+1
	torresA [i] = CreateSprite (7)
	SetSpriteVisible  (torresA[i], 0)
	SetSpriteActive (torresA[i], 0)
	SetSpriteSize (torresA [i], 60, 60)
	SetSpritePosition (torresA[i], mouseX, mouseY)	//arreglar para que siga el puntero con sync (?)	
	stack = stack + 1	
	monedas=monedas-5 	
	
endif
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
			if Tx>=9 and Tx<35 and Ty>=519 and Ty<=724
			creartorrea ()
			SetSpriteAngle (torresA[i], -90)
			elseif Tx >=9 and Tx<=482 and Ty>493 and Ty=<547
			creartorrea ()
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >=140
			SetSpriteAngle (torresA[i], -90)
			creartorrea()
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
			creartorrea ()
			elseif Tx>=160 and Tx<=634 and ty >=676 and Ty <= 704
			creartorreA ()
			SetSpriteAngle (torresA[i], 180)
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=294
			creartorreA ()
			SetSpriteAngle (torresA[i], 90)
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
			creartorreA ()
			SetSpriteAngle (torresA[i], 180)
			else
				monedas=monedas+5
				DeleteSprite (torresa [i])
				i=i-1
			endif
		stack=stack-1	
		endif
	endif
endfunction

function creartorreA ()
		SetSpritePosition (torresA[i], px, py)
		SetSpriteVisible (torresA[i],1)
		SetSpriteActive (torresA[i], 1)	
endfunction
