@echo Off
title belajar cmd
:awal
cls
echo 1 + 1 =
echo	2 
echo	4
echo.---------------------------------------------------
echo Masukan 2 atau 4
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
:benar
echo Benar Eeuy
echo.---------------------------------------------------
echo 1 - 1 =
echo	0 
echo	4
echo.---------------------------------------------------
echo Masukan 0 atau 4
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
:benar
echo Benar Eeuy
echo.---------------------------------------------------
echo 3 * 4 =
echo	4 
echo	12
echo.---------------------------------------------------
echo Masukan 4 atau 12
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
:benar
echo Benar Eeuy
echo.---------------------------------------------------
echo 10 / 2 =
echo	5 
echo	4
echo.---------------------------------------------------
echo Masukan 5 atau 4
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
:benar
echo Benar Eeuy
echo.---------------------------------------------------
echo 10 * 10 =
echo	1000 
echo	100
echo.---------------------------------------------------
echo Masukan 1000 atau 100
set/p "input=Masukan Option:"
if %input%==a goto benar
if %input%==b goto salah
cls
:salah
echo Salah ni ye!
pause
goto awal