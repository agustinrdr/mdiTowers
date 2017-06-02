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
			
			if Tx>=0 and Tx<35
			creartorreb ()
			elseif Tx >=35 and Tx<=482 and Ty>493 and Ty<550
			creartorreb ()
			elseif Tx >=423 and Tx<=482 and Ty<=493 and ty >=107
			creartorreb()
			elseif Tx>482 and tx <1190 and Ty<=165 and Ty >=107
				creartorreb ()
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
	

