# Shell Script Collection
My collection of shell scripts for linux and windows.

This collection sample off scripts for quick copy past or modification and added new logic.

<b>Ping scripts</b><br>
Several scripts that test host by ping and execute some logic:

<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/linux/check_ping/ping_sh">ping for linux</a><br>
<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/win/check_ping/ping.bat">ping for win</a><br>
Shell scripts for windows and linux, check host by ping, and just show ok or not ok.<br>
Very easy to add new logic, use this script as protoype.


<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/linux/check_ping/ping2log_sh">ping2log</a><br>
This is linux bash script, check host by ping, and write to log file with current date.<br>
<br>For example, part of log file:<br>
2017-06-14 20:45:02 126.0.0.1 - ping NOT OK<br>
2017-06-14 20:45:18 127.0.0.1 - ping OK<br>

<b>Mounting scripts</b><br>
Several scripts for mounting net drive:

<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/win/mounting/mountnetdrive.bat">mount net drive for win</a><br>
This script can mount net drive and run selected script after. Script has been tested on winXP.

<b>Arhiving scripts</b><br>
Several scripts for auto arhiving

<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/linux/archive/2arhive.sh">2arhive_sh</a><br>
This is linux bash script, which the arhiving your files use 7z archiver from console. You can set password to arhive, set prefix and suffix for arhive name. You can see current date in the arhive name<br>
I use this script for auto arhiving some directory by cron tab.

<br>For example: The name of arhive like this:<br>
my_arhive-2017_06_17-04_58_34-dos.7z<br>

<a href="https://github.com/avedensky/ShellScriptCollection/blob/master/linux/encoding/enc2UTF8.sh">2enc2UTF8</a><br>
Automatical coding recognize and encoding to UTF-8, for example win1252 text to UTF-8.
<br>

