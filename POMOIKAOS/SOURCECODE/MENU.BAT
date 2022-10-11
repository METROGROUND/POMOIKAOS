@echo off
cls
color 07
echo Welcome
echo POMOIKAOS V0.02
echo date %date% (no autoupdate)
echo time %time% (no autoupdate)
echo Select 1 to the screen test
echo Select 2 to rock paper scissors
echo Select 3 for browser
echo Select 4 for calc
set /p menuselect=select:
if %menuselect%==1 SCREENTEST.BAT
if %menuselect%==2 ROCKPAPERSCISSORS.BAT
if %menuselect%==3 BROWSER.BAT
if %menuselect%==4 CALC.BAT
