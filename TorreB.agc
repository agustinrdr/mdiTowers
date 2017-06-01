#include "startscreen.agc"
global k=0
global stack2= 0
function torreb () 
	if  puntuacion >= 10
	k=k+1
	torresB[k]= CreateSprite (8)
	
	SetSpriteSize(torresB[k], 60,60)	
	SetSpritePosition (torresB[k], mousex, mousey)
	SetSpriteVisible  (torresB[k],0)
	puntuacion =puntuacion-10
	stack2 = stack2 + 1
	endif

endfunction
function fijar2 ()
	if ( GetPointerPressed ( ) = 1 )
		if stack2 > 0
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torresB[k], Tx#-30, Ty#-30 )
			SetSpriteVisible (torresB[k],1)
			stack2=stack2-1
		endif
	endif
endfunction	
		
	

