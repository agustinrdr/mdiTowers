global displayWidth as integer
global displayHeight as integer

function Initialise()	
	displayWidth = 1366
	displayHeight = 768
	
	// Mostrar errores
	SetErrorMode(2)

	// Propiedades de la ventana
	SetWindowTitle( "Xtreme Tower Defense" )
	SetWindowSize( 1366, 768, 0 )
	SetWindowAllowResize( 1 ) // Permitir al usuario cambiar el tamaño de la ventana

	// Propiedades gráficas
	SetVirtualResolution( displayWidth, displayHeight )
	SetSyncRate( 30, 0 ) // 30 cuadros por segundo
	SetScissor( 0,0,0,0 ) // Margen de borde negro
	UseNewDefaultFonts( 1 ) // Fuentes
	LoadImage(1,"MenuTerminado02.png")
	CreateSprite(1,1)

endfunction

