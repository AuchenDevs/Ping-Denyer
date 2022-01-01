@echo off

:menu
cls
title Anti DDOS Console - by craciu25_YT
color 0b
echo ______________________________________________________________________________
echo                                                                               )
echo               [ Bienvenido Anti DDOS Console - by craciu25_YT ]               )
echo                                                                               )
echo                              [ Elija Una Opcion ]                             )
echo                                                                               )
echo     [1]. Activar proteccion ..                                                )
echo                                                                               )
echo     [2]. Descativar proteccion ..                                             )
echo.                                                                              )
echo     [3]. Activar firewall (Requerido para usar)                               )
echo.                                                                              )
echo     [4]. Desactivar firewall                                                  )
echo.                                                                              )
echo     [5]. Salir ..                                                             )
echo ______________________________________________________________________________)
set /p opc=Opcion: 
if %opc%== 1 (goto ap) 
if %opc%== 2 (goto dp)
if %opc%== 3 (goto af)
if %opc%== 4 (goto df) 
if %opc%== 5 (exit)

:ap
echo Cargando arhivos AntiDDoS.
timeout /NOBREAK /T 1 >null
cls
echo Cargando arhivos AntiDDoS..
timeout /NOBREAK /T 1 >null
cls
echo Cargando arhivos AntiDDoS...
timeout /NOBREAK /T 1 >null
cls
echo Archivos AntiDDoS cargados.
timeout /NOBREAK /T 1 >null
cls
echo Ejecutando los archivos AntiDDoS.
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall add rule name="Regla Solvetic PING IPv4" protocol=icmpv4:8,any dir=in action=block
cls
echo Ejecutando los archivos AntiDDoS..
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall add rule name="Regla Solvetic PING IPv6" protocol=icmpv6:8,any dir=in action=block
cls
echo Finalizado!
PAUSE
goto menu

:dp
echo Eliminando arhivos AntiDDoS.
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall add rule name=" Regla Solvetic PING IPv4" protocol=icmpv4:8,any dir=in action=allow
cls
echo Eliminando arhivos AntiDDoS..
timeout /NOBREAK /T 1 >null
cls
echo Cargando arhivos AntiDDoS...
timeout /NOBREAK /T 1 >null
cls
netsh advFirewall Firewall add rule name=" Regla Solvetic PING IPv6" protocol=icmpv6:8,any dir=in action=allow
cls
echo Archivos AntiDDoS Eliminados.
timeout /NOBREAK /T 1 >null

echo Finalizado!
PAUSE
goto menu

:af
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