@echo off
cls
set /p one=First number:
set /p two=Second number:
set /a plus=%one%+%two%
set /a minus=%one%-%two%
set /a multiplication=%one%*%two%
set /a division=%one%/%two%
echo Plus:%plus%
echo Minus:%minus%
echo Multiplication:%multiplication%
echo Division:%division%
pause
menu.bat