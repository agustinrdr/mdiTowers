function CrearBotonTorre1 ()
LoadImage(4,"towerDefense_tile205.png")
LoadImage(5,"towerDefense_tile205.png")
AddVirtualButton(3,650,100,100) //activo
AddVirtualButton(4,650,100,110) //no activo	
endfunction
function iniciarbotones () 	
if puntuacion >= 5			
SetVirtualButtonActive (3,1)
SetVirtualButtonActive (4,0)
SetVirtualButtonImageUp(4,4)
SetVirtualButtonImageDown (4,5)
endif
if puntuacion < 5
	SetVirtualButtonActive (3,0)
	
	SetVirtualButtonActive (4,0)
	SetVirtualButtonAlpha (3, 50)
	SetVirtualButtonAlpha (4, 50)
	
endif

if GetVirtualButtonPressed (3)
	puntuacion = puntuacion - 5
endif 

endfunction
