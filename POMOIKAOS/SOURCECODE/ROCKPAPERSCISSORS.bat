@echo off
cls

echo Hi choose rock=r(1) scissors=s(2) or paper=p(3)
set /p choose=Choose:

python -c "import random;print(str(random.randrange(1, 4)))" > temp.txt
set /p v1=<temp.txt

if %v1%==1 set rand=Rock
if %v1%==2 set rand=Scissors
if %v1%==3 set rand=Paper

set v2=%choose%

if %choose%==r set v2=1
if %choose%==s set v2=2
if %choose%==p ( if %v1%==1 ( set v2=0 ) else set v2=3 )

set /a val=%v1%-%v2%

if %choose%==1 set choose=Rock
if %choose%==r set choose=Rock
if %choose%==2 set choose=Scissors
if %choose%==s set choose=Scissors
if %choose%==3 set choose=Paper
if %choose%==p set choose=Paper

echo You chose %choose%
echo I chose %rand%


@REM echo %val%

if %val% EQU 0 (
    echo Draw
    goto End 
)

if %val% EQU 2 (
    echo You lose
    goto End
)

if %val% EQU -1 (
    echo You lose
    goto End
) 

echo You win

:End 
pause

del temp.txt
@REM MENU.BAT