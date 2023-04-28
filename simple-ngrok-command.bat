::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJFeD5k07ZQ0HAReWPWm2A/gL4eb/4P2U70wQULRrRJzS16SCJa0d7Vfrftsu2XdXmcUIQh5Ae3I=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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
