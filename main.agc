
// Project: MDI Tower Defense 
// Created: 2017-05-11

#include "initialise.agc"
#include "startscreen.agc"

Initialise() 

do
    ShowStartScreen()

    Print( ScreenFPS() )
    Sync()
loop
