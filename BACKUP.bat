@echo off

set /p abfrage=Wollen Sie ein vollständiges Backup machen, oder nur neue/geänderte Datein übertragen? (A)ALLE / (N)NEUE...

if "%abfrage%" == "A" goto :alle
if "%abfrage%" == "N" goto :neue

:alle
PowerShell.exe -Command "D:\SCRIPTS\backup_folder_home_manual_complete.ps1"
goto ende

:neue
PowerShell.exe -Command "D:\SCRIPTS\backup_folder_home_manual_newdata.ps1"
goto ende

:ende
pause
exit

