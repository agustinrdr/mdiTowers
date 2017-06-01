#include "startscreen.agc"
global i=0 //maximo 
global stack = 0
function torreA () 
if  monedas >= 5
	SetSpriteVisible  (torresA[i], 1)
	SetSpriteActive (torresA[i], 1)
	SetSpritePosition (torresA[i], mouseX, mouseY)	//arreglar para que siga el puntero con sync (?)	
	stack = stack + 1	
	monedas=monedas-5 	
endif
endfunction
function fijar ()
	if ( GetPointerPressed ( ) = 1 )
		if stack > 0
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torresA[i], Tx#-30, Ty#-30 )
			SetSpriteVisible (torresA[i],1)
			SetSpriteActive (torresA[i], 1)
			stack=stack-1
			i=i+1
		endif
	endif
endfunction


