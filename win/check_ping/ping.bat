@echo off

rem This script check ping and show result as simple string (Ok,Unknown host, Time out)
rem
rem The main idea - copy past or quick modify with new logic

rem --- You Configuration ---

rem Set the required address
SET CHECK_HOST="127.0.0.1"
rem ---


rem Change code page to english (for current console only)
chcp 437 > nul

ping -n 1 %CHECK_HOST% > %TEMP%\pinglog

find "Unknown host" < %TEMP%\pinglog > nul
if not errorlevel 1 echo Unknown host && goto :eof

find "Reply from" < %TEMP%\pinglog > nul
if not errorlevel 1 echo Ok && goto :eof

find "Request timed out" < %TEMP%\pinglog > nul
if not errorlevel 1 echo Time out && goto :eof