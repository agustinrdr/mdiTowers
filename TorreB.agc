#include "startscreen.agc"
global k=0 //maximo 
global stack2= 0

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
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torresB[k], Tx#-30, Ty#-30)
			SetSpriteVisible (torresB[k],1)
			SetSpriteActive (torresB[k], 1)
			stack2=stack2-1
			
		endif
	endif
endfunction	
		
	

