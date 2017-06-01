
// Project: MDI Tower Defense 
// Created: 2017-05-11

#include "initialise.agc"
#include "startscreen.agc"

global puntuacion =5
global vidas =1
global mousex as float
global mousey as float
global torresA as integer [5]
global torresB as integer [5]
global stack = 0
global stack2= 0
global i=0
global k=0
Initialise() 

initStartScreen()

do
	iniciar()
	salir()
    Sync()
loop


