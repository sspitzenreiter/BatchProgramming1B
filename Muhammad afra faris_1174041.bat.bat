@echo off
:home

title My Batch
echo Welcome !!!!
echo.
@echo off 
Rem This program just displays My Batch 
set message=Selamat datang di program saya 
echo %message%
pause





echo.
date /t
echo --------------
time /t
echo.
echo.
echo  Waktu milidetik %time%
echo  ---------------------------
echo  Berikut adalah waktu sekarang
echo.
pause

@echo off
:awal
title Isikan Biodata anda
cls
@echo off 
Rem This program just displays My Batch 
set message=Buat biodata anda 
echo %message%
pause
set /p nama=Siapa nama anda ?
echo.
set /p ttl=Tanggal berapa anda lahir ?
echo.
set /p tlahir=Dimana anda lahir ?
echo.
set /p hobby=Hobby anda ?
echo.
set /p cita=Cita-cita anda ?
echo.
echo.
set /p pilihan=Ketik y atau n untuk membuat biodata :

if NOT defined pilihan (
goto error
)

if %pilihan%==n goto proseskembali
if %pilihan%==y goto hasil

:error
cls
echo Error
pause
goto awal

:proseskembali
cls
echo.
echo  Ketik biodata exit atau calculator
echo -------------------------
set /p opsi=kembali membuat biodata, pergi ke kalkulator atau keluar ?

if NOT defined opsi (
goto errorproses
)

if %opsi%==exit goto exit
if %opsi%==biodata goto awal
if %opsi%==calculator goto calculator

if NOT %opsi%==biodata goto errorproses
if NOT %opsi%==keluar goto errorproses
if NOT %opsi%==calculator goto errorproses

:errorproses
cls
echo Anda memasukan pilihan yang salah !
pause
goto proseskembali

:exit
exit

:hasil
title Biodata anda
cls
echo Nama anda = %nama%
echo.
echo Tanggal lahir anda = %ttl%
echo.
echo Tempat anda lahir = %tlahir%
echo.
echo Hobby anda = %hobby%
echo.
echo Cita-cita anda = %cita%
echo.
echo.
pause
goto proseskembali

@echo off

:calculator
cls
title Calculator
echo.
echo  Calculator
echo  ----------
echo.
echo                                  Gunakan tanda : + - / *
set /p calc=. Type :

if NOT defined calc (
	goto error
)

set /a math=%calc%
echo.
echo.
echo   %calc% = %math%
echo.
pause>nul
goto proseskembali

:error
cls
color 40
echo.
echo  Error
pause>nul
goto proseskembali
