@echo off
title MultiTool - by Cypher
chcp 65001 >nul
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo. 
echo ==========================
echo 1 - Mostrar IP
echo 2 - Limpar cache DNS
echo 3 - Ver processos ativos
echo 4 - Sair
echo ==========================
echo.
echo.

set /p opcao=Escolha uma opção: 

if "%opcao%"=="1" goto ip
if "%opcao%"=="2" goto dns
if "%opcao%"=="3" goto processos
if "%opcao%"=="4" exit

:ip
ipconfig
pause
goto menu

:dns
ipconfig /flushdns
echo Cache DNS limpo!
pause
goto menu

:processos
tasklist
pause
goto menu

:banner
echo.
echo.
echo		·▄▄▄▄   ▐ ▄ .▄▄ ·     ▄▄▄▄▄            ▄▄▌  
echo        ██▪ ██ •█▌▐█▐█ ▀.     •██  ▪     ▪     ██•  
echo        ▐█· ▐█▌▐█▐▐▌▄▀▀▀█▄     ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  
echo        ██. ██ ██▐█▌▐█▄▪▐█     ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌
echo        ▀▀▀▀▀• ▀▀ █▪ ▀▀▀▀      ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ 
echo.
echo.
pause