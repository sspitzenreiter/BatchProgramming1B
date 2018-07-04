@echo off
title Belajar Menghitung dengan file Batch
:awal
color 1b
ECHO ******************************************************
echo BELAJAR MENGHITUNG YUK!
echo.
echo ******************************************************
echo.
set/p "b1=Masukan Bilangan Ke-1: "
set/p "b2=Masukan Bilangan Ke-2: "
echo.
echo [1] kalikan  [2] Tambah [3] Bagi [4] kurangakan
set/p "pil=Pilih Action:"
if %pil%==''goto awal
if %pil%==1 goto kali
if %pil%==2 goto tambah
If %pil%==3 goto bagi
if %pil%==4 goto kurang
echo.
:kali
set/a b=b1*b2
echo Hasil Kalinya Adalah = %b%
pause
goto awal
:tambah
set/a b=b1+b2
echo Hasil Pertambahan Adalah= %b%
pause
goto awal
:bagi
set/a b=b1/b2
echo Hasil Pembagian Adalah= %b%
pause
goto awal
:kurang
set/a b=b1-b2
echo Hasil Pengurangan Adalah= %b%
pause
goto awal