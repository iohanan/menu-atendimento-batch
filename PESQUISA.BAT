@echo off
cls
:PESQUISA
echo [0] CANCELAR PESQUISA
echo ---------------------
echo Utilizar "+" para espaco entre palavras. 
echo Ex: Uma+pesquisa+simples
echo '
set /p opc=Pesquisa: 

if %opc% NEQ 0 start firefox.exe https://www.google.com/search?q=%opc%

goto MENU

:MENU
call C:\Sistemas\Exemplo\MENU.bat
exit
