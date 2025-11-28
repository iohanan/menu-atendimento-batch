@echo off
title PAINEIS

:MENU
cls
echo ==============================
echo           PAINEIS
echo ==============================
echo 1 - PAINEL 1
echo 2 - PAINEL 2
echo 0 - VOLTAR
echo ==============================
set /p opção="Selecione a opcao: "

if "%opção%"=="1" call PAINEIS\PAINEL1.bat
if "%opção%"=="2" call PAINEIS\PAINEL2.bat
if "%opção%"=="0" exit
goto MENU
