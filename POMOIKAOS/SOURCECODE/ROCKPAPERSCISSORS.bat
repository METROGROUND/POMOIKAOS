@echo off
cls
echo Hi choose rock=r paper=p or scissors=s
set /p choose=Choose:
if %choose%==r echo i choose paper i win
if %choose%==p echo i choose scissors i win
if %choose%==s echo i choose rock i win
pause
MENU.BAT