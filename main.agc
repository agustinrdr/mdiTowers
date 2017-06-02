
// Project: MDI Tower Defense 
// Created: 2017-05-11

#include "initialise.agc"
#include "startscreen.agc"

global puntuacion = 0 
global monedas = 500
global vidas = 1
global mouseX as float
global mouseY as float
global torresA as integer [5]
global torresB as integer [5]

Initialise() 

initStartScreen()

do
	iniciar()
	salir()
    Sync()
loop


