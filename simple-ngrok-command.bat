@echo off

rem Script by Miuthoi123.
rem This Script only for Windows and working on app name Ngrok.
rem Only work when run as administrator.

if not exist ngrok.exe goto error
if exist ngrok.exe goto start

:start
echo Please choose protocol domain.
echo.
echo 1. TCP protocol.
echo 2. TLS protocol.
echo 3. HTTP protocol.
echo NOTE: You type protocol need type like (ex: tcp, tls, http)
echo.

set /p protocol=Protocol: 
set /p port=Port number: 

cls
ngrok %protocol% %port%

cls
echo.
echo PRESS ANY KEY TO EXIT.
pause >> nul
exit

:error
echo Sorry, but file ngrok.exe has not found
echo.
echo PRESS ANY KEY TO EXIT.
pause >> nul
exit
