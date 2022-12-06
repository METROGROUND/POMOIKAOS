@echo off
cls

echo Hi choose rock=r(1) scissors=s(2) or paper=p(3)
set /p choose=Choose:

python -c "import random;print(str(random.randrange(1, 4)))" > temp.txt
set /p v1=<temp.txt

if %v1%==1 set rand=r
if %v1%==2 set rand=s
if %v1%==3 set rand=p

if %choose%==r set v2=1
if %choose%==s set v2=2
if %choose%==p ( if %v1%==1 ( set v2=0 ) else set v2=3 )

set /a val=%v1%-%v2%

echo %rand%
echo %choose%
@REM echo %val%

if %val% EQU 0 (
    echo Draw
    goto End 
)

if %val% EQU 2 (
    echo Lost
    goto End
)

if %val% EQU -1 (
    echo Lost
    goto End
) 

echo Win

:End 
pause

del temp.txt
@REM MENU.BAT