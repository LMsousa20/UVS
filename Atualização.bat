@echo off
ATUALIZAÇÃO
color 2
:menu

echo.

cls
echo ____________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo.                                 ATUALIZADO - GERENTE 458 E PDV 464
echo ____________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo.
echo.
echo.
echo 1. Atualizar o Sinapse %Sinapse%
echo 2. Atualizar o PDV %PDV%
echo 3. Atualizar o GERENTE %GERENTE%
echo 4. Atualizar o NFE %NFE%
echo 5. Atualizar o NFCE %NFCE%
echo 6. Atualizar o SAT %SAT%
echo 7. Atualizar o PDV MOVEL %PDVMOVEL%
echo 8. Atualizar o Monitor_MFE %MFE%
echo 9. Atualizar Expressa 
echo 0. Sair

echo.
set /p menu=Selecione um numero:
if %menu%==1 goto Sinapse 
if %menu%==2 goto pdv 
if %menu%==3 goto gerente 
if %menu%==4 goto nfe 
if %menu%==5 goto nfce
if %menu%==6 goto sat 
if %menu%==7 goto pospdv 
if %menu%==8 goto monitor 
if %menu%==9 goto express
if %menu%==0 goto sair

pause
goto menu

:Sinapse

set Sinapse= OK
echo PROCESSO FINALIZADO
start ./Sinapse.exe


goto menu
pause

:pdv
set PDV= OK
IF EXIST C:\ACS\Sintese\PDV (
echo Pasta existe 
start ./pdv.exe
goto menu
pause
) ELSE (
color c             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                     VERIFICA ONDE ESTA A PASTA DO PDV 
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 2
start ./pdv.exe
pause
)
goto menu



pause

:gerente
set GERENTE= OK
IF EXIST C:\ACS\Sintese\Gerente (
echo Pasta existe 
start ./gerente.exe

goto menu
) ELSE (
color 2             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                    VERIFICA ONDE ESTA A PASTA DO GERENTE  - Procure a pasta para EXECUTAR do Requisitos
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
start ./gerente.exe
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                       Instalou o requisitos RAPAZ ?
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause


goto menu
)


goto menu


:nfe
set NFE= OK
taskkill /f /im MonitorManifesto.exe
start ./nfe.exe

goto menu

:nfce
set NFCE= OK
start ./nfce.exe

goto menu

:sat

set SAT= OK
start ./sat.exe

goto menu
pause

:monitor
set MFE= OK
taskkill /f /im Monitor_MFe.exe
start ./Monitor_MFe.exe

goto menu
pause

:pospdv
set PDVMOVEL= OK
taskkill /f /im MonitorVendas.exe
start ./PosPdv264.exe

goto menu
pause

:express


set PDV= OK
IF EXIST C:\ACS\Sintese\PDV (
echo Pasta existe 
start ./pdv.exe
) ELSE (
color c             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                     VERIFICA ONDE ESTA A PASTA DO PDV 
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 2
start ./pdv.exe
pause
)
timeout /t 5
set GERENTE= OK
IF EXIST C:\ACS\Sintese\Gerente (
echo Pasta existe 
start ./gerente.exe
) ELSE (
color 2             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                    VERIFICA ONDE ESTA A PASTA DO GERENTE  - Procure a pasta para EXECUTAR do Requisitos
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
start ./gerente.exe
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                       Instalou o requisitos RAPAZ ?
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
)

set Sinapse= OK
echo PROCESSO FINALIZADO
start ./Sinapse.exe
timeout /t 5

set NFE= OK
taskkill /f /im MonitorManifesto.exe
start ./nfe.exe
timeout /t 15

set NFCE= OK
start ./nfce.exe
timeout /t 15

set SAT= OK
start ./sat.exe
timeout /t 15

set MFE= OK
taskkill /f /im Monitor_MFe.exe
start ./Monitor_MFe.exe
timeout /t 5

set PDVMOVEL= OK
taskkill /f /im MonitorVendas.exe
start ./PosPdv264.exe
timeout /t 2

goto menu
pause

:sair
pause
cls



