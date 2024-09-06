@echo off
ATUALIZAÇÃO
color 2
md "C:\update"	
:menu

echo.

cls
echo __________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""
echo. ATUALIZANDO VERSA PREMIA - GERENTE 547 e PDV 344
echo __________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""
echo.
echo.
echo.
echo 1. Atualizar o Sinapse %Sinapse%
echo 2. Atualizar o PDV %PDV%
echo 3. Atualizar o GERENTE %GERENTE%
echo 4. Atualizar o PDV MOVEL %PDVMOVEL%
echo 5. Atualizar Expressa 
echo 6. Atualizar o Vibra %VIBRA%
echo 7. Atualizar o SHELL %SHELL%
echo 0. Sair

echo.
set /p menu=Selecione um numero:
if %menu%==1 goto Sinapse 
if %menu%==2 goto pdv 
if %menu%==3 goto gerente 
if %menu%==4 goto pospdv 
if %menu%==5 goto express
echo __________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""
if %menu%==6 goto Vibra
if %menu%==7 goto express
if %menu%==0 goto sair

pause
goto menu

:Sinapse
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer Sinapse /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/Sinapse_547.exe "C:\update\Sinapse.exe"
pause
set Sinapse= OK
echo PROCESSO FINALIZADO
start C:\update\Sinapse.exe
goto menu
pause

:Vibra
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer VIBRA /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/ACS_Vibra.rar "C:\update\VIBRA.exe"
pause
set VIBRA= OK
echo PROCESSO FINALIZADO
start C:\update\ACS_VIBRA.rar
goto menu
pause

:SHELL
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer SHELL /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/ACS_Shell.rar "C:\update\SHELL.exe"
pause
set SHELL= OK
echo PROCESSO FINALIZADO
start C:\update\ACS_SHELL.rar
goto menu
pause




:pdv
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer PDV /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/PDV_344_Medidor.exe "C:\update\pdv.exe"
pause
pause
set PDV= OK
IF EXIST C:\ACS\Sintese\PDV (
echo Pasta existe 
start C:\update\pdv.exe
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
start C:\update\pdv.exe
pause
)
goto menu



pause

:gerente
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer gerente /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/Gerente_547.exe "C:\update\gerente.exe"
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
start C:\update\gerente.exe
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo                                       Instalou o requisitos RAPAZ ?
echo ________________________________________________________________________________________________________________________
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
pause


goto menu
)


goto menu



pause

:pospdv
echo COMEÇANDO DOWNLOAD
bitsadmin.exe /transfer PdvMovel /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/PdvMovel_344.exe "C:\update\PdvMovel.exe"
pause
pause
set PDVMOVEL= OK
taskkill /f /im MonitorVendas.exe
start C:\update\PdvMovel.exe

goto menu
pause

:express
bitsadmin.exe /transfer Sinapse /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/Sinapse_547.exe "C:\update\Sinapse.exe"
pause
bitsadmin.exe /transfer PDV /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/PDV_344_Medidor.exe "C:\update\pdv.exe"
pause
bitsadmin.exe /transfer gerente /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/Gerente_547.exe "C:\update\gerente.exe"
pause
bitsadmin.exe /transfer PdvMovel /download /priority foreground http://191.252.185.234:8000/versoes/Gerente547_pdv334/PdvMovel_344.exe "C:\update\PdvMovel.exe"
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



