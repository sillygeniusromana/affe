@echo off
if %username%==Administrator 	goto admin
if %username%==UserA_B 		goto buchhaltung
if %username%==UserD_B 		goto buchhaltung
if %username%==UserB_P 		goto produktion
if %username%==UserC_P 		goto produktion

:admin
net use B: "\\CBSGL-xx\BUCHHALTUNG"
net use T: "\\CBSGL-xx\PRODUKTION"
net use I: "\\CBSGL-XX\ADMIN"
goto ende

:buchhaltung
net use T: "\\CBSGL-xx\BUCHHALTUNG"
goto ende

:produktion
net use B: "\\CBSGL-xx\PRODUKTION"
goto ende

:ende
exit