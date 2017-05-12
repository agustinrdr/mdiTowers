global titleimage as integer

function initStartScreen()
	titleimage = CreateSprite(LoadImage("tower_50.png")) //Loads an image and creates a sprite
	SetSpriteSize(titleimage, displayWidth*0.5, displayHeight*0.5) // Sets the title image to half the screen width and height
	SetSpritePositionByOffset(titleimage, displayWidth*0.5, displayHeight*0.3) // Positions the title image at the top and in the centre of the screen
	
	//Create a button with the word PLAY on it
	AddVirtualButton(1, displayWidth*0.5, displayHeight*0.75, 100)
	SetVirtualButtonText(1, "PLAY")

	//Hide the title image and the play button until we need them
	SetSpriteVisible(titleImage, FALSE)
	SetVirtualButtonVisible(1, FALSE) 
	SetVirtualButtonActive(1, FALSE)
endfunction


function ShowStartScreen()
	//Show the title image and the play button 
	SetSpriteVisible(titleImage, TRUE)
	SetVirtualButtonActive(1, TRUE)
	SetVirtualButtonVisible(1, TRUE) 

	//Wait here until the play button is pressed
	repeat
		/*TO DO
		Make the title screen more fun.  Add animations and sounds.
		Anything to keep the user interested
		*/
		sync()
	until GetVirtualButtonPressed(1)
	
	//Hide the start screen again
	SetSpriteVisible(titleImage, FALSE)
	SetVirtualButtonActive(1, FALSE)
	SetVirtualButtonVisible(1, FALSE) 
endfunction


/*TO DO
	1) 	Show each type of invader and the score you get for shooting them
	2)	Add a menu to change the settings (input/sound/etc.)

*/

