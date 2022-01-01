@echo off
chcp 65001
set "co=color 0b"
set "ver=v1"
set "by=craciu25_YT"
set "masapps=https://sites.google.com/view/teamdevelopers"
set "github=https://github.com/AuchenDevs"
set "githubc=https://github.com/craciu25yt"
set "ultac=1/1/22"
set "stable=No info"
IF %ERRORLEVEL% EQU 0 ( SET USERSTATUS=Administrator) else (
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
echo.
echo Tienes que ejecutar este programa como administrador!
echo.
echo WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! WARINING! 
timeout 4 >null 
exit
)
:menu
cls
title Ping Denyer - by craciu25_YT
color 0b
echo ______________________________________________________________________________
echo                                                                               )
echo                         [ Ping Denyer - by craciu25_YT ]                      )
echo                                                                               )
echo                              [ Elija Una Opcion ]                             )
echo                                                                               )
echo     [1]. Activar proteccion (Requiere admin)..                                )
echo                                                                               )
echo     [2]. Descativar proteccion (Requiere admin)..                             )
echo.                                                                              )
echo     [3]. Activar firewall (Requerido para usar Ping Denyer - Requiere admin)  )
echo.                                                                              )
echo     [4]. Desactivar firewall (Requiere admin) ..                              )
echo.                                                                              )
echo     [5]. App Info ..                                                          )
echo.                                                                              )
echo     [6]. Salir ..                                                             )
echo ______________________________________________________________________________)
set /p opc=Opcion: 
if %opc%== 1 (goto ap) 
if %opc%== 2 (goto dp)
if %opc%== 3 (goto af)
if %opc%== 4 (goto df) 
if %opc%== 5 (goto info)
if %opc%== 6 (exit)

:ap
cls
color 5
echo Activando para IPv4...
timeout /NOBREAK /T 2 >null
cls
netsh advFirewall Firewall add rule name="Ping Denyer IPv4" protocol=icmpv4:8,any dir=in action=block
cls
color a
echo ACTIVADO CORRECTAMENTE!
timeout /NOBREAK /T 2 >null
cls
color 5 
echo Activando para IPv6...
timeout /NOBREAK /T 2 >null
cls
netsh advFirewall Firewall add rule name="Ping Denyer IPv6" protocol=icmpv6:8,any dir=in action=block
cls
color a
echo Finalizado! Pulsa enter para volver al menu. 
PAUSE >null
goto menu

:dp
cls
color 5
echo Desactivando para IPv4...
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall delete rule name="Ping Denyer IPv4"
cls
color a
echo DESACTIVADO CORRECTAMENTE!
timeout /NOBREAK /T 1 >null
cls
color 5 
echo Desactivando para IPv6...
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall delete rule name="Ping Denyer IPv6"
cls
color a
echo Finalizado! Pulsa enter para volver al menu. 
PAUSE >null
goto menu

:af
cls
echo Activando firewall.
timeout /NOBREAK /T 1 >null
cls
sc config MpsSvc start= auto
cls
echo Activando firewall..
timeout /NOBREAK /T 1 >null
cls
net start MpsSvc
cls
echo Activando firewall...
timeout /NOBREAK /T 1 >null
cls
netsh advfirewall set allprofiles state on
cls
echo Activando firewall.
timeout /NOBREAK /T 1 >null

echo Finalizado!
PAUSE
goto menu

:df
cls
echo Desactivando firewall.
timeout /NOBREAK /T 1 >null
cls
sc config MpsSvc start= disabled
cls
echo Desactivandoo firewall..
timeout /NOBREAK /T 1 >null
cls
net stop MpsSvc
cls
echo Desactivando firewall...
timeout /NOBREAK /T 1 >null
cls
netsh advfirewall set allprofiles state off
cls
echo Desactivando firewall.
timeout /NOBREAK /T 1 >null

echo Finalizado!
PAUSE
goto menu

:info
cls
echo __________________________________
echo.
echo APPInfo                           
echo.
echo.
echo Version: %ver%                    
echo.
echo By %by%                           
echo.
echo Mas apps en:                      
echo %masapps%    
echo.
echo Github AuchenDevs: %github% 
echo.
echo Github craciu: %githubc%
echo.
echo Dia que se finalizo la %ver%:        
echo %ultac%   
echo.
echo Ver. estable: %stable%                        
echo __________________________________
echo.
echo.
echo Pulsa enter para volver al menu
pause >null