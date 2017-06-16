@ECHO OFF
rem This script mounting net drive, and run select script after
rem
rem The main idea - copy past or quick modify with new logic
rem
rem Script tested on winXP, win7, win10 not tested


rem --- You Configuration ---

rem set our net path:
SET net_path=\\YOU_SERVER_IP\YOU_FOLDER

rem set drive latter for connect:
SET make_drive=V

rem you can run other script after, just write here:
Set script_file=

rem -------------------------


if NOT EXIST V: GOTO Connect

:Execute
ECHO Execute
CALL %script_file%
GOTO ExitScript


:Connect
rem check ping
ping -n 1 %net_path% > %TEMP%\pinglog

find "Unknown host" < %TEMP%\pinglog > NUL
IF NOT ERRORLEVEL 1 GOTO Error_Unknown_host

find "Request timed out" < %TEMP%\pinglog > NUL
IF NOT ERRORLEVEL 1 GOTO Error_Time_out

find "Reply from" < %TEMP%\pinglog > NUL
IF NOT ERRORLEVEL 1 echo is Ping - Ok

rem connect net drive
NET USE %make_drive%: %net_path%
IF ERRORLEVEL 1 ECHO GOTO Error_Connect_NetDrive
ECHO "Disk Connected"
GOTO Execute


:Error_Connect_NetDrive
ECHO "NET USE - ERROR"
GOTO ExitScript


:Error_Unknown_host
ECHO "NET USE - ERROR"
GOTO ExitScript


:Error_Time_out
ECHO "NET USE - ERROR"
GOTO ExitScript


:ExitScript
ECHO.