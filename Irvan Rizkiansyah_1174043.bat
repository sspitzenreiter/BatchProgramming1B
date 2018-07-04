@echo off
cls
:waktu1
Rem Untuk menampilkan tanggal dan waktu.
title Quis Sistem Operasi Irvan Rizkiansyah_D4-TI-1B_1174043

echo
	date /t
echo -------
	time /t

:data
echo.
echo Isi Data Diri Anda
echo.
set /p Nama= Nama :
set /p NPM= NPM :
set /p Kelas= Kelas :
set /p Email= Email :
echo.
cls
echo Data sudah masuk, Silahkan Masuk Ke Aplikasi
echo --------------------------------------------
echo Press Any Key
pause>nul
cls

:waktu2
echo
	date /t
echo -------
	time /t

GOTO pilih

:pilih
echo.
echo Aplikasi Pilihan :
echo.
echo 1. Buka Notepad
echo 2. Buka Calculator
echo 3. Buka Microsoft Word
echo 4. Buka Microsoft Excel
echo 5. Buka Opera
echo 6. Selesai
echo.
echo.
	set /p pilihan=pilih yang akan dibuka:
	IF '%pilihan%' == '%pilihan%' GOTO Item_%pilihan%
:Item_1
	start /MIN /DC:\Windows\System32 notepad.exe
	GOTO pilih
:Item_2
	start /MIN /DC:\Windows\System32 calc.exe
	GOTO pilih
:Item_3
	start /MIN /D"C:\Program Files\Microsoft Office\Office16" WINWORD.EXE
	GOTO pilih
:Item_4
	start /MIN /D"C:\Program Files\Microsoft Office\Office16" EXCEL.EXE
	GOTO pilih
:Item_5
	start /MIN /D"C:\Program Files\Opera" launcher.exe http://www.google.com
	GOTO pilih
:Item_6
	exit


pause>nul