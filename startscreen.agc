function initStartScreen()
	AddVirtualButton(1, displayWidth*0.5, displayHeight*0.6+110, 100)
	SetVirtualButtonText(1, "Jugar")
	AddVirtualButton(2, displayWidth*0.5, displayHeight*0.6+220, 100)
	SetVirtualButtonText(2, "Salir")
endfunction

function salir()
	if GetVirtualButtonPressed(2) then end
endfunction


	
