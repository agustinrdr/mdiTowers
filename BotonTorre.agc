function CrearBotonTorre1 ()
LoadImage(4,"towerDefense_tile205.png")
AddVirtualButton(3,300,80,100) //activo
AddVirtualButton(4,300,80,110) //no activo	
endfunction
function iniciarbotones () 		
if puntuacion >= 5			
SetVirtualButtonActive (3,1)
SetVirtualButtonActive (4,0)
SetVirtualButtonImageUp(4,4)
SetVirtualButtonImageDown (4,4)
SetVirtualButtonAlpha (3, 200)
SetVirtualButtonAlpha (4, 200)
endif

if puntuacion < 5
	SetVirtualButtonActive (3,0)
	SetVirtualButtonActive (4,0)
	SetVirtualButtonAlpha (3, 50)
	SetVirtualButtonAlpha (4, 50)
	
endif



endfunction
