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
			
			if Tx>=-7 and Tx<35 and Ty>493 and Ty<=728
			creartorrea ()
			SetSpriteAngle (torresA[i], -90)
			elseif Tx >=35 and Tx<=482 and Ty>493 and Ty<550
			creartorrea ()
			elseif Tx >=423 and Tx<=482 and Ty<=493 and ty >=107
			SetSpriteAngle (torresA[i], -90)
			creartorrea()
			elseif Tx>482 and tx <1190 and Ty<=165 and Ty >=107
			creartorrea ()
			elseif Tx>=157 and Tx<=665 and ty >=671 and Ty <= 730
			creartorreA ()
			SetSpriteAngle (torresA[i], 180)
			elseif Tx>=606 and tx<=665 and Ty<671 and Ty >=294
			creartorreA ()
			SetSpriteAngle (torresA[i], 90)
			elseif Ty<=349 and ty>=295 and tx >665 and tx<1190
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
