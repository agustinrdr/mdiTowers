#include "enemigo.agc"
#include "BotonTorre.agc"
function initStartScreen()
	// Creación de botones virtuales
	AddVirtualButton(1, displayWidth*0.5+6, displayHeight*0.6+20, 180)
	SetVirtualButtonText(1, "Jugar")
	AddVirtualButton(2, displayWidth*0.5+6, displayHeight*0.6+206, 180)
	SetVirtualButtonAlpha(2, 0)
	SetVirtualButtonText(2, "Salir")
endfunction

function salir()
	if GetVirtualButtonPressed(2) then end // Sale del juego
endfunction

function iniciar()
	// Espera a que el boton Jugar se presione
		if GetVirtualButtonPressed(1)
		LoadImage(2, "CaminoFinal.png")
		CreateSprite(2,2)		
		crearEnemigo()
		CrearBotonTorre1 ()	
		ResetTimer() // resetea el timer
	// Carga el timer y borra los botones
	
		do
		a#=timer()
		reloj(a#)
		SetVirtualButtonActive(1, 0)
		SetVirtualButtonVisible(1, 0)
		SetVirtualButtonActive(2, 0)
		SetVirtualButtonVisible(2, 0)
		if variable = 0
		Menemigo()
		endif
		if variable = 1
		Menemigo2()
		endif
		
		if GetSeconds() = 5
			puntuacion = 10
		endif
		iniciarbotones()
		sync ()
		Print("X: "+str(RobotX#,1))
		Print("Y: "+str(RobotY#,1))
		Print ("Puntos: "+ str(puntuacion))
		
		
		loop
		endif
		
		
endfunction


function reloj(sec as float) // Reloj 
        local min as Float
        min = trunc(sec / 60.0)
        sec = sec - min * 60.0
        
        local ms as Float
        ms = sec - trunc(sec) 
        ms = ms * 100.0
        
        sec = trunc(sec)
        Print(right("00"+str(min,0),2)+":"+right("00"+str(sec,0),2))

endfunction

