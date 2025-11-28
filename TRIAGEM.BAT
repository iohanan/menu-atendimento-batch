::OBJETIVO: SCRIPT PARA REALIZAR A TRIAGEM DE PACIENTES DE RM
::Possível adaptar para qualquer triagem apenas modificando o arquivo roteiro.txt

@echo off
chcp 65001
cls
echo TRIAGEM RM
setlocal enabledelayedexpansion

::---------------------//LÊ O ARQUIVO "roteiro.txt" LINHA POR LINHA E REGISTRA EM VARIAVEIS (p1, p2, ...pn) CADA RESPOSTA
set /a i=1

for /f "delims=" %%a in (C:\Sistemas\Exemplo\txts\roteiro.txt) do (
	set /p p!i!=%%a 
	set /a i+=1
)

::---------------------// LÊ O ARQUIVO "roteiro.txt" LINHA POR LINHA E ESCREVE AS VARIÁVEIS NO ARQUIVO triagem_rm.tx
set /a i=1

for /f "delims=" %%a in (C:\Sistemas\Exemplo\txts\roteiro.txt) do (
	for /l %%b in (!i!,1,!i!) do (
		if %%b==1 (echo %%a !p%%b! > C:\Sistemas\Exemplo\txts\triagem_rm.txt
		) else (echo %%a !p%%b! >> C:\Sistemas\Exemplo\txts\triagem_rm.txt)
	)
set /a i+=1
)
goto SAIR

::---------------------// INICIA O SCRIPT DE ALTERAÇÃO DA TRIAGEM [Y] OU ENCERRA O SCRIPT [N]
::----------// se nenhuma opção for selecionada em 20 seg o script encerra automaticamente
:SAIR
choice /c:yn /n /t 20 /d n /m "Deseja alterar alguma pergunta? [Y/N]: "

if %errorlevel% EQU 2 goto EXIT
if %errorlevel% EQU 1 goto OPCAO

::---------------------// SCRIPT DE ALTERAÇÃO DAS VARIÁVEIS ARMAZENADAS NA triagem_rm.txt
:OPCAO
set /p alt=Qual pergunta gostaria de alterar? 
if %alt% LSS %i% goto ALTERAR
echo INVALIDO 
goto SAIR

:ALTERAR
set /p p%alt%=%alt% - 
set /a n=1
for /f "delims=" %%a in (C:\Sistemas\Exemplo\txts\roteiro.txt) do (
	for /l %%b in (!n!,1,!n!) do (
		if %%b==1 (echo %%a !p%%b! > C:\Sistemas\Exemplo\txts\triagem_rm.txt
		) else (echo %%a !p%%b! >> C:\Sistemas\Exemplo\txts\triagem_rm.txt)
	)
set /a n+=1
)
echo [%alt%] ALTERADO.
goto SAIR

::---------------------//FINALIZA O SCRIPT
:EXIT
endlocal
start C:\Sistemas\Exemplo\txts\triagem_rm.txt
cls
call C:\Sistemas\Exemplo\menu.bat
