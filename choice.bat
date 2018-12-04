echo off
chcp 1252 &::UTF-8 encoding
cls
GOTO fragen

:fragen
choice /n /c JNV /m "(J)a, (N)ein, (V)ielleicht"
IF %errorlevel% == 1 GOTO ja
IF %errorlevel% == 2 GOTO nein
IF %errorlevel% == 3 GOTO vielleicht

:ja
echo "Sie haben ja gewählt"
GOTO end

:nein
echo "Sie haben nein gewählt"
GOTO end

:vielleicht
echo "Bitte nicht vielleicht ankreuzen"
GOTO fragen

:end
Pause