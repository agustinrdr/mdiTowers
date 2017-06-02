#include "enemigo.agc"
#include "BotonTorre.agc"
#include "TorreA.agc"
#include "TorreB.agc"

function initStartScreen()
	// Creación de botones virtuales
	AddVirtualButton(1, displayWidth*0.5+6, displayHeight*0.6+20, 180)
	SetVirtualButtonText(1, "Jugar")
	AddVirtualButton(2, displayWidth*0.5+6, displayHeight*0.6+206, 180)
	SetVirtualButtonAlpha(2, 0)
	SetVirtualButtonText(2, "Salir")
		CreateText(3,"Ubica la torre en el mapa")
		SetTextColorAlpha (3, 0)
		SetTextSize(3,40)
		SetTextPosition(3,540,55)
endfunction

function salir()
	if GetVirtualButtonPressed(2) then end // Sale del juego
	if GetRawKeyPressed(27) then end // Con la tecla Esc sale del juego
endfunction

function iniciar()
	// Espera a que el boton Jugar se presione
	if GetVirtualButtonPressed(1)
		
		LoadImage(2, "CaminoFinal.png")	
		LoadImage (7, "towerDefense_tile249.png")
		LoadImage (8, "towerDefense_tile250.png")
		LoadImage(3, "towerDefense_tile248.png")
		Loadimage (9, "fondotorre.png")
		CreateSprite(2,2)
		crearEnemigo()
		CrearBotonTorre ()	
		ResetTimer() // resetea el timer					
	
		while (vidas>0)	
			jugar()
		endwhile
	
		if (vidas = 0)
			ShowGameOverScreen()
		endif
		
	endif
endfunction

function jugar()

	// Carga el timer y borra los botones anteriores
		a#=timer()
		reloj(a#)
		SetVirtualButtonActive(1, 0)
		SetVirtualButtonVisible(1, 0)
		SetVirtualButtonActive(2, 0)
		SetVirtualButtonVisible(2, 0)
	
	// Inicia elementos	
			iniciarbotones()		//botonera para colocar torres
			indicadores()
			movEnemigos()
			LlegaALaBase ()	
			
		if GetVirtualButtonPressed (3) // iniciar torre A si toca el boton
			torrea()	
			
		endif
		
		if GetVirtualButtonPressed (5) // iniciar torre B si toca el boton
			torreb()		
				
		endif
		
		if stack >= 1 or stack2>=1
			SetSpriteImage (2,9)
			SetTextColorAlpha (3, 200)
			fijar ()
			fijar2 ()
			
		else
			SetSpriteImage (2,2)
			SetTextColorAlpha (3, 0)
		endif		
		
		sync()

endfunction
			
function indicadores()			
	// Muestra indicadores varios
		Print("X: "+str(RobotX#,1))
		Print("Y: "+str(RobotY#,1))
		Print ("Puntos: "+ str(puntuacion))
		Print ("Monedas: "+ str(monedas))
		Print ("Vidas: "+ str(vidas))
		print ("y:"+ str(py))
		print ("x:" +str(px))

endfunction

function ShowGameOverScreen() 
	// Pantalla de game over cuando se terminan las vidas
		SetVirtualButtonVisible(3,0) //desaparecer el botón de la torre
		SetVirtualButtonVisible(4,0) //desaparecer el botón de la torre
		SetVirtualButtonVisible(5,0) //desaparecer el botón de la torreB
		SetVirtualButtonVisible(6,0) //desaparecer el botón de la torreB
		LoadImage(6,"GAMEOVER.png")
		CreateSprite(6,6)
		CreateText(2,"Presiona ESC para salir")
		SetTextSize(2,40)
		SetTextPosition(2,520,510)
endfunction

function reloj(sec as float) 
	// Reloj 
        local min as Float
        min = trunc(sec / 60.0)
        sec = sec - min * 60.0
        
        local ms as Float
        ms = sec - trunc(sec) 
        ms = ms * 100.0
        
        sec = trunc(sec)
        Print(right("00"+str(min,0),2)+":"+right("00"+str(sec,0),2))
endfunction

