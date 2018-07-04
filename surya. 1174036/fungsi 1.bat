@echo Off
title belajar cmd
:awal
cls
echo Belajar branching di cmd
echo.---------------------------------------------------
echo Masukan A atau B
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
cls
:benar
echo Benar Eeuy
pause
goto awal
cls
:salah
echo Salah ni ye!
pause
goto awal