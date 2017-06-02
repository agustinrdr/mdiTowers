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
	SetSpritePosition (torresA[i], mouseX, mouseY)
	stack = stack + 1	
	monedas=monedas-5
	
endif
endfunction
function fijar ()
	if stack > 0
		if ( GetPointerPressed ( ) = 0 )
			SetTextColorAlpha (3, 255)
		else
			SetTextColorAlpha (3, 0)
		
			Tx# = GetPointerX ( )
			Ty# = GetPointerY ( )
			SetSpritePosition (torresA[i], Tx#-30, Ty#-30 )
			SetSpriteVisible (torresA[i],1)
			SetSpriteActive (torresA[i], 1)
			stack=stack-1
			
		endif
	endif
endfunction

function rotarTorre() //NO FUNCIONA
	if stack > 0
		angle = ATan2(RobotX#, RobotY#)
		SetSpriteAngle(torresA[i],angle)
	endif
endfunction

