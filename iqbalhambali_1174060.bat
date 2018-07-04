@echo off 
Title Batch


@ECHO OFF
ECHO Hello Semuanya!
ECHO.

@echo off 
echo sekarang menunjukan pukul %TIME%
echo.


@echo OFF
CALL :basic_function 
EXIT /B %ERRORLEVEL% 
:basic_function
SET n=Iqbal Hambali
ECHO Nama Saya %n%

@echo off
set a[0]=Bandung
set a[1]=1999
set a[2]=30 Mei
echo Saya Lahir di  %a[0]% 
echo Saya Lahir Pada Tanggal %a[2]%
echo Saya Lahir Tahun %a[1]% 
echo.



