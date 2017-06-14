#include "startscreen.agc"
global i=0 //maximo 
global stack = 0
global pos = 0
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
		if ( GetPointerPressed ( ) = 1 )		
			Tx = GetPointerX ( )
			Ty = GetPointerY ( )
			tx=tx-30
			ty=ty-30
			px= Tx
			py= Ty
			
			if Tx>=9 and Tx=<35 and Ty>=549 and Ty<=724
				creartorrea ()
				SetSpriteAngle (torresA[i], -90)
				pos = 1
			elseif Tx>=9 and Tx<77 and Ty>=519 and Ty<=550
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				pos = 5	
			elseif Tx >=9 and Tx<=440 and Ty>493 and Ty=<547
				creartorrea ()
				pos=2
			elseif Tx >=445 and Tx<=482 and Ty>=520 and Ty=<547
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				pos=5	
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >210
				SetSpriteAngle (torresA[i], -90)
				creartorrea()
				pos=1	
			elseif Tx>453 and tx <=482 and Ty<=210 and Ty >=140
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				pos=5	
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
				creartorrea ()
				pos=2
			elseif Tx>=160 and Tx<=580 and ty >=676 and Ty <= 705
				creartorreA ()
				pos=3
				SetSpriteAngle (torresA[i], 180)
			elseif Tx>580 and Tx<=634 and ty >650 and Ty <= 704
				creartorreA ()
				pos=4
				SetSpriteAngle (torresA[i], 135)	
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=319
				creartorreA ()
				SetSpriteAngle (torresA[i], 90)
				pos=0
			elseif Tx>=606 and tx<=635 and Ty<319 and Ty >=293
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				pos=4
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
				creartorreA ()
				SetSpriteAngle (torresA[i], 180)
				pos = 3
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

function colisiontorrea () // para que no se puedan superponer las torres de valor 5
	if i=2
		if GetSpriteCollision(torresA[i], torresa[i-1])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		endif
	endif
	if i = 3
		if GetSpriteCollision(torresA[i], torresa[i-1])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		elseif GetSpriteCollision(torresA[i], torresa[i-2])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		endif
	endif
	if i = 4
		if GetSpriteCollision(torresA[i], torresa[i-1])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		elseif GetSpriteCollision(torresA[i], torresa[i-2])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		elseif GetSpriteCollision(torresA[i], torresa[i-3])
			monedas=monedas+5
			DeleteSprite (torresa [i])
			i=i-1
		endif
	endif
endfunction
 
function seguimiento()
	
endfunction
