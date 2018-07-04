@echo off
title Merubah Hak Akses dari User Menjadi Admin
color 3e
echo.
echo =======================================
echo.
echo User Dikomputer ini!:
echo ---------------------------------------
rem cek user yang ada
net user
echo.
rem cek salah satu user
set/p "ad=Masukan Nama User yang akan dicek:"
echo Hasil:
net user %ad%
echo Reset Password Adminitrator
echo.
set/p "ad=Masukan Nama Adminnya:"
set/p "ps=Password Login       :"
net user %ad% %ps%
echo.
Pause