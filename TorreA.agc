#include "startscreen.agc"
global i=0
global stack = 0
function torreA () 
	if  puntuacion >= 5
	i=i+1
	torresA [i] = CreateSprite (7)
	SetSpriteSize(torresA [i], 60,60)	
	SetSpritePosition (torresA[i], mousex, mousey)
	SetSpriteVisible  (torresA[i],0)
	puntuacion =puntuacion-5
	stack = stack + 1
	endif

endfunction
function fijar ()
	if ( GetPointerPressed ( ) = 1 )
		if stack > 0
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torresA[i], Tx#-30, Ty#-30 )
			SetSpriteVisible (torresA[i],1)
			stack=stack-1
		endif
	endif
endfunction


