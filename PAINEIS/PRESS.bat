/*
OBJETIVO: SCRIPT DE APOIO PARA OS PAINEIS

EXECUÇÃO: PRESSIONA AS TECLAS DE SETA PARA BAIXO E PARA CIMA ATUALIZANDO O MONITOR
*/
@if (@CodeSection == @Batch) @then

@echo off
    set SendKeys=CScript //nologo //E:JScript "%~F0"
    cls
    color 0a
	    timeout /t 1 /nobreak >nul
    %SendKeys% {DOWN}
    %SendKeys% {UP}
@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));