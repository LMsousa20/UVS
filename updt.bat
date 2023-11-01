@echo off
ATUALIZAÇÃO
color 2
md "C:\update"	
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
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer Sinapse /download /priority foreground https://uvs-psi.vercel.app/Sinapse.exe "C:\update\Sinapse.exe"
pause

set Sinapse= OK
echo PROCESSO FINALIZADO
start ./Sinapse.exe


goto menu
pause

:pdv
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer PDV /download /priority foreground https://uvs-psi.vercel.app/PDV.exe "C:\update\pdv.exe"
pause
pause
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
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer gerente /download /priority foreground https://uvs-psi.vercel.app/gerente.exe "C:\update\gerente.exe"
pause
pause
set GERENTE= OK
IF EXIST C:\ACS\Sintese\Gerente (
echo Pasta existe 
start C:\update\gerente.exe

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
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer nfe /download /priority foreground https://uvs-psi.vercel.app/nfe.exe "C:\update\nfe.exe"
pause
pause
set NFE= OK
taskkill /f /im MonitorManifesto.exe
start C:\update\nfe.exe

goto menu

:nfce
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer nfce /download /priority foreground https://uvs-psi.vercel.app/nfce.exe "C:\update\nfce.exe"
pause
pause
set NFCE= OK
start C:\update\nfce.exe

goto menu

:sat
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer sat /download /priority foreground https://uvs-psi.vercel.app/sat.exe "C:\update\sat.exe"
pause
pause
set SAT= OK
start C:\update\sat.exe

goto menu
pause

:monitor
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer Monitor_MFe /download /priority foreground https://uvs-psi.vercel.app/Monitor_MFe.exe "C:\update\Monitor_MFe.exe"
pause
pause
set MFE= OK
taskkill /f /im Monitor_MFe.exe
start C:\update\Monitor_MFe.exe

goto menu
pause

:pospdv
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer PdvMovel /download /priority foreground https://uvs-psi.vercel.app/PdvMovel.exe "C:\update\PdvMovel.exe"
pause
pause
set PDVMOVEL= OK
taskkill /f /im MonitorVendas.exe
start C:\update\PdvMovel.exe

goto menu
pause

:express
bitsadmin.exe /transfer Sinapse /download /priority foreground https://uvs-psi.vercel.app/Sinapse.exe "C:\update\Sinapse.exe"
pause
bitsadmin.exe /transfer PDV /download /priority foreground https://uvs-psi.vercel.app/PDV.exe "C:\update\pdv.exe"
pause
bitsadmin.exe /transfer gerente /download /priority foreground https://uvs-psi.vercel.app/gerente.exe "C:\update\gerente.exe"
pause
bitsadmin.exe /transfer nfe /download /priority foreground https://uvs-psi.vercel.app/nfe.exe "C:\update\nfe.exe"
pause
bitsadmin.exe /transfer nfce /download /priority foreground https://uvs-psi.vercel.app/nfce.exe "C:\update\nfce.exe"
pause
bitsadmin.exe /transfer sat /download /priority foreground https://uvs-psi.vercel.app/sat.exe "C:\update\sat.exe"
pause
bitsadmin.exe /transfer Monitor_MFe /download /priority foreground https://uvs-psi.vercel.app/Monitor_MFe.exe "C:\update\Monitor_MFe.exe"
pause
bitsadmin.exe /transfer PdvMovel /download /priority foreground https://uvs-psi.vercel.app/PdvMovel.exe "C:\update\PdvMovel.exe"
pause

set PDV= OK
IF EXIST C:\ACS\Sintese\PDV (
echo Pasta existe 
start C:\update\pdv.exe
) ELSE (
color c             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                     VERIFICA ONDE ESTA A PASTA DO PDV 
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
color 2
start C:\update\pdv.exe
pause
)
timeout /t 5
set GERENTE= OK
IF EXIST C:\ACS\Sintese\Gerente (
echo Pasta existe 
start C:\update\gerente.exe
) ELSE (
color 2             
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                    VERIFICA ONDE ESTA A PASTA DO GERENTE  - Procure a pasta para EXECUTAR do Requisitos
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
start C:\update\gerente.exe
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                       Instalou o requisitos RAPAZ ?
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause
)

set Sinapse= OK
echo PROCESSO FINALIZADO
start C:\update\Sinapse.exe
timeout /t 5

set NFE= OK
taskkill /f /im MonitorManifesto.exe
start C:\update\nfe.exe
timeout /t 15

set NFCE= OK
start C:\update\nfce.exe
timeout /t 15

set SAT= OK
start C:\update\sat.exe
timeout /t 15

set MFE= OK
taskkill /f /im Monitor_MFe.exe
start C:\update\Monitor_MFe.exe
timeout /t 5

set PDVMOVEL= OK
taskkill /f /im MonitorVendas.exe
start C:\update\PdvMovel.exe
timeout /t 2

goto menu
pause

:sair
pause
cls



