@echo off
cls
::Michael jordan telleria guadalajara 1ro DAM
:menu
color 0a
cls
echo.
echo 1. CREAR ESTRUCTURA
echo 2. CREAR INFORMACION
echo 3. SALIR
echo.
choice /c 123 /M "Elige una opcion:"

if errorlevel 3 goto :SALIR
if errorlevel 2 goto :CREAR_INFORMACION
if errorlevel 1 goto :CREAR_ESTRUCTURA

:CREAR_ESTRUCTURA
set /p dir_raiz= ingrese el nombre del directorio raiz:
mkdir %dir_raiz%
mkdir %dir_raiz%\RED
mkdir %dir_raiz%\SISTEMA
mkdir %dir_raiz%\ONLINE
echo Fin de la creacion ficheros
PAUSE
goto menu

:CREAR_INFORMACION
if not exist %dir_raiz% (
    echo ERROR:SELECCIONA LA opcion 1 ANTES DE SEGUIR
	PAUSE
	goto menu
	)
	ipconfig > %dir_raiz%\RED\CONFIGRED.txt
	chkdsk > %dir_raiz%\SISTEMA\CHEQUEO.txt 
	set /p ip= escriba la ip para hacer el ping:
	ping %ip% > %dir_raiz%\ONLINE\PING_%ip%.txt
	echo informacion creada 
	PAUSE
	goto menu
:SALIR
echo Saliendo del menu actividad 2 
exit /b
	