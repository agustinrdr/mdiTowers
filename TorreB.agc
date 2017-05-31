#include "startscreen.agc"
function torreb () 
	if  puntuacion >= 10
	torres= torres+1
	CreateSprite (torres,8)
	SetSpriteSize(torres, 60,60)	
	SetSpritePosition (torres, mousex, mousey)
	SetSpriteVisible  (torres,0)
	puntuacion =puntuacion-10
	stack2 = stack2 + 1
	endif

endfunction
function fijar2 ()
	if ( GetPointerPressed ( ) = 1 )
		if stack2 > 0
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torres, Tx#-30, Ty#-30 )
			SetSpriteVisible (torres,1)
			stack2=stack2-1
		endif
	endif
endfunction	
		
	

