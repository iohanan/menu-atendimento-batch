::---------------------//script cria um menu interativo com atalhos para as principais ferrementas utilizadas durante atendimento

@echo off

title MENU DE ATENDIMENTO
color 0a

::---------------------//painel de atalhos para seleção

:MENU
cls
echo [+] INICIAR SISTEMA
echo [-] FINALIZAR SISTEMA
echo [O] DESLIGAR COMPUTADOR

echo ------------------------							
echo FERRAMENTAS			MANUAIS
echo ['] EMAIL			[.] AUTORIZACAO		
echo [/] PESQUISAR CRM		[*] ATENDIMENTO		
echo [?] PESQUISAR GOOGLE	[,] DOPPLER
echo [T] TRIAGEM RM		[!] SEDACAO
echo [D] PASTAS			[;] INTRANET
echo [P] PAINEL

echo ------------------------

echo [1] OPERADORA1	[6] OPERADORA6
echo [2] OPERADORA2	[7] OPERADORA7
echo [3] OPERADORA3	[8] OPERADORA8
echo [4] OPERADORA4	[9] OPERADORA9
echo [5] OPERADORA5

echo ------------------------

echo [0] Sair
echo ------------------------

set /p opc=Escolher: 

::---------------------//atalhos de acesso com as princiapais páginas web acessadas durante atendimento

if "%opc%"=="0" goto SAIR
if "%opc%"=="+" goto INICIAR
if "%opc%"=="-" goto FINALIZAR
if "%opc%"=="1" goto OPERADORA1
if "%opc%"=="2" goto OPERADORA2
if "%opc%"=="3" goto OPERADORA3
if "%opc%"=="4" goto OPERADORA4
if "%opc%"=="5" goto OPERADORA5
if "%opc%"=="6" goto OPERADORA6
if "%opc%"=="7" goto OPERADORA7
if "%opc%"=="8" goto OPERADORA8
if "%opc%"=="9" goto OPERADORA9
if "%opc%"=="." goto AUT
if "%opc%"=="*" goto ATEND
if "%opc%"=="," goto DOPPLER
if "%opc%"=="/" goto CRM
if "%opc%"==";" goto INTRANET
if "%opc%"=="!" goto SEDACAO
if "%opc%"=="'" goto EMAIL
if /i "%opc%"=="d" goto PASTAS
if "%opc%"=="?" goto PESQUISAR
if /i "%opc%"=="o" goto OFF
if /i "%opc%"=="t" goto TRIAGEM
if /i "%opc%"=="p" goto PAINEL

echo INVALIDO!
pause
goto MENU

::------------------------------------------------

:OPERADORA1
start firefox.exe https://exemplo.com
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA2
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA3
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA4
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA5
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA6
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA7
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA8
start firefox.exe https://exemplo.com
goto MENU

:OPERADORA9
start firefox.exe https://exemplo.com
goto MENU

::------------------------------------------------

:AUT
start chrome.exe https://exemplo.com
goto MENU

:ATEND
start chrome.exe https://exemplo.com
goto MENU

:DOPPLER
start chrome.exe https://exemplo.com
goto MENU

:CRM
start chrome.exe https://exemplo.com
goto MENU

:INTRANET
start firefox.exe http://exemplo.com
goto MENU

:SEDACAO
start chrome.exe https://exemplo.com
goto MENU

:EMAIL
start firefox.exe http://exemplo.com
goto MENU

::---------------------//script com as principais pastas utilizadas no computador
:PASTAS 
call C:\Sistemas\Exemplo\PASTAS.bat

::---------------------//script para automatizar processo de triagem
:TRIAGEM
call C:\Sistemas\Exemplo\TRIAGEM.bat

::---------------------//script com os paineis disponiveis para atendimento
:PAINEL
call C:\Sistemas\Exemplo\PAINEL.bat

::---------------------//script de pesquisa para o google
:PESQUISAR
call C:\Sistemas\Exemplo\PESQUISA.bat

::------------------------------------------------

::---------------------//script que executa os principais programas utilizados para o atendimento
:INICIAR
cd C:\Program Files\Exemplo\SistemaA\
start SistemaA.exe
cd C:\Sistemas\Exemplo\Monitor\
start MonitorCliente.exe
cd C:\Program Files\Exemplo\Chat\
start ChatCliente.exe
goto MENU

::---------------------//script que finaliza os principais programas utilizados para o atendimento
:FINALIZAR
taskkill /f /im MonitorCliente.exe
taskkill /f /im SistemaA.exe
taskkill /f /im ChatCliente.exe
goto MENU

::---------------------//desliga o computador
:OFF
shutdown -s
goto SAIR

::---------------------//encerra o script menu.bat
:SAIR
exit
