function CrearBotonTorre ()
	LoadImage(4,"towerDefense_tile206.png")
	LoadImage(5,"towerDefense_tile205.png")
	AddVirtualButton(3,270,70,95) //activo
	AddVirtualButton(4,270,70,95) //no activo	
	AddVirtualButton (5,380,70,95)
	AddVirtualButton (6,380,70,95)
	SetVirtualButtonImageUp(6,5)
	SetVirtualButtonImageDown (6,5)
	SetVirtualButtonImageUp(4,4)
	SetVirtualButtonImageDown (4,4)
endfunction

function iniciarbotones () 		
if monedas >= 5			
	SetVirtualButtonActive (3,1)
	SetVirtualButtonActive (4,0)
	SetVirtualButtonAlpha (3, 200)
	SetVirtualButtonAlpha (4, 200)
else
	SetVirtualButtonActive (3,0)
	SetVirtualButtonActive (4,0)
	SetVirtualButtonAlpha (3, 50)
	SetVirtualButtonAlpha (4, 50)	
endif

if monedas >= 10
	SetVirtualButtonActive (5,1)
	SetVirtualButtonActive (6,0)
	SetVirtualButtonAlpha (5, 200)
	SetVirtualButtonAlpha (6, 200)
else
	SetVirtualButtonActive (5,0)
	SetVirtualButtonActive (6,0)
	SetVirtualButtonAlpha (5, 50)
	SetVirtualButtonAlpha (6, 50)
endif

if i>3
	SetVirtualButtonActive (3,0)
	SetVirtualButtonActive (4,0)
	SetVirtualButtonAlpha (3, 50)
	SetVirtualButtonAlpha (4, 50)
endif

if k>2
	SetVirtualButtonActive (5,0)
	SetVirtualButtonActive (6,0)
	SetVirtualButtonAlpha (5, 50)
	SetVirtualButtonAlpha (6, 50)
endif	
	
endfunction
