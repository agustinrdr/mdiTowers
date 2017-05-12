#constant TRUE 1
#constant FALSE 0


global displayWidth as integer
global displayHeight as integer
global gameOver as integer
global levelComplete as integer
global atlas as integer


function Initialise()	
	displayWidth = 1024
	displayHeight = 768
	
	// show all errors
	SetErrorMode(2)

	// set window properties
	SetWindowTitle( "Xtreme Tower Defense" )
	SetWindowSize( 1024, 768, 0 )
	SetWindowAllowResize( 1 ) // allow the user to resize the window

	// set display properties
	SetVirtualResolution( displayWidth, displayHeight )
	SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
	SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
	SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
	UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
	/*
	
	//Load a font to use for the display. This is a TTF font that is stored in the media folder
	LoadFont(1, "Renegade Master.ttf") 
	
	// Load an atlas image ready for cutting up
	atlas = LoadImage("atlas.png")
		
	//Call the initialse functions in each file
	initStartScreen()
	initScore()
	initHiScore()
	initLives()
	initEnemies()
	initPlayer()
	initInput()
	initBullets()
	initBase()
	initBoom()
	*/
endfunction

/*
function ResetGame()	
	SetQtyLives(3)
	SetScore(0)
	gameOver = FALSE
	levelComplete = FALSE
	NewWaveOfEnemies()
	SetPlayerToStartPosition()
	SetBasesVisible(TRUE)
	//Show onscreen virtual buttons if not on Windows
	if GetDeviceBaseName() <> "windows"
		SetButtonsVisible(TRUE)
	endif
endfunction
*/	

