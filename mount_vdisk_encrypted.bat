diskpart /s "D:\SCRIPTS\mount_vdisk_encrypted.txt"

IF %errorlevel%==0 goto success
IF %errorlevel%==1 goto fail

:success
echo VDisk successfully attached.	Laufwerk: E:\	User: %username%	Datum: %date%	Zeit: %time% >> "D:\LOGS\vdisk_log.txt"
goto ende

:fail
echo VDisk NOT attached!	Laufwerk: E:\	User: %username%	Datum: %date%	Zeit: %time% >> "D:\LOGS\vdisk_log.txt"
goto ende

:ende
exit