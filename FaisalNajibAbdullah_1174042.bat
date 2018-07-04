@echo off
title BELAJAR MENGHITUNG BARENG NAJIB
:awal
ECHO ------------------------------------------------------
echo YUK MENGHITUNG BARENG NAJIB 
echo.
echo ------------------------------------------------------
echo.
set/p "b1=Masukan Angka Ke-1: "
set/p "b2=Masukan Angka Ke-2: "
echo.
echo [1] PERKALIAN  [2] PENJUMLAHAN [3] PEMBAGIAN [4] PENGURANGAN
set/p "input=Pilih Action:"
if %input%==''goto awal
if %input%==1 goto kali
if %input%==2 goto tambah
If %input%==3 goto bagi
if %input%==4 goto kurang
echo.
:kali
set/a b=b1*b2
echo Hasil PERKALIAN Adalah = %b%
pause
goto awal
:tambah
set/a b=b1+b2
echo Hasil PENJUMLAHAN Adalah= %b%
pause
goto awal
:bagi
set/a b=b1/b2
echo Hasil PEMBAGIAN Adalah= %b%
pause
goto awal
:kurang
set/a b=b1-b2
echo Hasil PENGURANGAN Adalah= %b%
pause
goto awal