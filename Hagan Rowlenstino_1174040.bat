@echo off
title Aplikasi Penjumlahan Angka 

color 2b
set message=Aplikasi Penjumlahan Angka by Hagan
echo %message%

pause

echo Today's Date is : %DATE%

echo The Current Time is : %TIME%
:awal
set/p "a1= Input bilangan 1 : "
set/p "a2= Input bilangan 2 : "

set/a b=a1+a2
echo Hasilnya adalah : %b%
if %b%==0 echo " Hasilnya 0 karena anda memasukkan selain angka atau menambahkan dengan inversnya atau juga anda menginputkan angka 0"
pause
goto awal