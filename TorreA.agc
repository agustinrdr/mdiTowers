#include "startscreen.agc"
function torreA () 
	if  puntuacion >= 5
	torres= torres+1
	CreateSprite (torres,7)
	SetSpriteSize(torres, 60,60)	
	SetSpritePosition (torres, mousex, mousey)
	SetSpriteVisible  (torres,0)
	puntuacion =puntuacion-5
	stack = stack + 1
	endif

endfunction
function fijar ()
	if ( GetPointerPressed ( ) = 1 )
		if stack > 0
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torres, Tx#-30, Ty#-30 )
			SetSpriteVisible (torres,1)
			stack=stack-1
		endif
	endif
	
		
	
endfunction

