@echo off

:PASTAS
cls
echo [0] VOLTAR
echo -------------
echo [1] TERMOS

set /p opc=Escolher: 

if "%opc%"=="1" goto TERMOS
if "%opc%"=="0" goto VOLTAR

echo INVALIDO!
pause
goto PASTAS

:TERMOS
start C:\Sistemas\Exemplo\termos
goto PASTAS

:VOLTAR
