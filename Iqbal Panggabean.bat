@echo off
title Created by Iqbal Gabeeeeeeeeeeeeeeeeeee
:awalan
echo Welcome, %USERNAME%
echo apa yang ingin kamu lakukan?

echo ------------------------------------------------------------------------------
echo                                PROFILE
echo ------------------------------------------------------------------------------
echo NAMA   : MUHAMMAD IQBAL PANGGABEAN AHHAY
echo KELAS  : D4TI1B
echo NPM    : 1174063
echo.
echo ------------------------------------------------------------------------------

echo [Perintah internal]
echo 1. MENAMPILKAN FILE YANG BERADA DIDALAM FOLDER   5. UNTUK MELIHAT WAKTU
echo 2. MEMBUAT FOLDER                                6. MELIHAT VERSI DOS
echo 3. MELIHAT TANGGAL                               7. MEMBUAT FILE
echo 4. UNTUK MENGHAPUS LAYAR

echo [Perintah eksternal]
echo 8. MATIKAN KOMPUTER SEKARANG                     12. Log Off      
echo 9. TUNGGU KOMPUTER MATI SAMPAI BEBERAPA SAAT     13. Pilihan mematikan komputer
echo 10. Force Close                                  14. keluar
echo 11. Restart komputer

:awal
echo
echo ------------------------------------------------------------------------------
echo.
set /P "p1=pilihan anda :"
if %p1%==1 goto dir
if %p1%==2 goto menu md
if %p1%==3 goto date
if %p1%==4 goto cls
if %p1%==5 goto time
if %p1%==6 goto ver
if %p1%==7 goto edit
if %p1%==8 goto Off
if %p1%==9 goto OffLater
if %p1%==10 goto Close
if %p1%==11 goto Restart
if %p1%==12 goto Logoff
if %p1%==13 goto Choice
if %p1%==14 goto keluar
if else goto Again
cls

echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:menu md
cls
set /P nama= Masukkan nama folder/direktori :
echo.
echo berhasil membuat direktori di desktop dengan nama "%nama%"
md "%nama%"
goto :awalan
set /P nama= Masukkan nama folder yang ingin kalian buat :
echo.
echo selamat anda berhasil membuat direktori didesktop dengan nama "%nama%"
del "%nama%"
goto :awalan
:dir
cls
echo selamat anda berhasil melihat isi direktori anda "%nama%"
echo.
echo MAAAANNNNTTTTTAAAAAPPPPP !
dir "%nama%"
goto :awalan
:time
cls
echo waktu komputer anda adalah :
time
goto :awalan
:cls
cls
echo tuh kan sudah bersih :D

goto :awalan
:date
cls
echo tanggal komputer anda adalah :
date
goto :awalan
:edit
set /P nama= Masukkan nama file yang ingin dibuat :
echo.
echo berhasil membuat file di desktop dengan nama "%nama%"
edit "%nama%"
goto :awalan
:ver
echo inilah versi DOS komputer anda
ver
goto :awalan
:Off
echo "sekarang komputer anda akan di turn off"
ECHO.
echo "Turning Off....."
Shutdown -s
pause
:OffLater
echo "tunggu komputer sampai mati kira-kira 1 menit"
ECHO.
echo "Nikmati waktumu  :D"
pause
:Close
echo "siap-siap komputer anda akan di kembalikan sampai menuju ke pemilihan user "
shutdown -f
pause
goto start
cls
:Restart
echo "merestart ulang komputer"
shutdown -r
pause
cls
:Logoff
echo "Logging Off your Computer"
shutdown -l
pause
cls
:Choice
echo "pilihan untuk mematikan komputer"
shutdown -i
pause
goto awalan
:keluar
Exit