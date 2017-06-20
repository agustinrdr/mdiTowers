#include "startscreen.agc"
global i=0 //maximo 
global stack = 0

function torreA () 
for t=1 to 4
	torresA [t] = CreateSprite (7)
	SetSpriteVisible  (torresA[t], 0)
	SetSpriteActive (torresA[t], 0)
	SetSpriteSize (torresA [t], 60, 60)
	SetSpritePosition (torresA[t], mouseX, mouseY)	
	
	torres[t].id=t
	torres[t].torre=torresA [t]
	
next t
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
				torres[i].posicion=1
			elseif Tx>=9 and Tx<77 and Ty>=519 and Ty<=550
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx >=9 and Tx<=440 and Ty>519 and Ty=<547
				creartorrea ()
				torres[i].posicion=2
			elseif Tx >=445 and Tx<=482 and Ty>=520 and Ty=<547
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx >=453 and Tx<=482 and Ty<=520 and ty >210
				creartorrea()
				SetSpriteAngle (torresA[i], -90)				
				torres[i].posicion=1
			elseif Tx>453 and tx <=482 and Ty<=210 and Ty >=140
				creartorrea ()
				SetSpriteAngle (torresA[i], -45)
				torres[i].posicion=5
			elseif Tx>482 and tx <1190 and Ty<=164 and Ty >=140
				creartorrea ()
				torres[i].posicion=2
			elseif Tx>=160 and Tx<=580 and ty >=676 and Ty <= 705
				creartorreA ()
				torres[i].posicion=3
				SetSpriteAngle (torresA[i], 180)
			elseif Tx>580 and Tx<=634 and ty >650 and Ty <= 704
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				torres[i].posicion=4	
			elseif Tx>=606 and tx<=635 and Ty<676 and Ty >=319
				creartorreA ()
				SetSpriteAngle (torresA[i], 90)
				torres[i].posicion=0
			elseif Tx>=606 and tx<=635 and Ty<319 and Ty >=293
				creartorreA ()
				SetSpriteAngle (torresA[i], 135)
				torres[i].posicion=4
			elseif Ty<=318 and ty>=294 and tx >606 and tx<1190
				creartorreA ()
				SetSpriteAngle (torresA[i], 180)
				torres[i].posicion=3
			endif
			colisiontorrea ()
			stack=stack-1 
		endif		
	endif
endfunction

function creartorreA ()
	i=i+1	
	SetSpritePosition (torresA[i], px, py)
	SetSpriteVisible (torresA[i],1)
	SetSpriteActive (torresA[i], 1)
	monedas=monedas-5 
endfunction

function colisiontorrea () // para que no se puedan superponer las torres de valor 5
	if i=2
		if GetSpriteCollision(torresA[2], torresa[1])
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif		
	endif
	if i = 3
		if GetSpriteCollision(torresA[3], torresa[2]) OR GetSpriteCollision(torresA[3], torresa[1])			
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif
	endif
	if i = 4
		if GetSpriteCollision(torresA[4], torresa[3]) OR GetSpriteCollision(torresA[4], torresa[2])	OR GetSpriteCollision(torresA[4], torresa[1])	
			SetSpriteVisible (torresA[i],0)
			SetSpriteActive (torresA[i], 0)
			monedas=monedas+5
			i=i-1
		endif
	endif
endfunction
 
