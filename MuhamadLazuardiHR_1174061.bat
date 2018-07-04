@echo off 
set list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))
echo.

@echo off 
echo %DATE%
echo.

@echo off 
set message=SELAMAT DATANG
echo %message%
echo.


@echo off 
setlocal enabledelayedexpansion 
set topic[0]=Satu-Satu
set topic[1]=Aku Sayang Ibu
set topic[2]=Dua-Dua 
set topic[3]=Aku Sayang Ayah
set topic[4]=Tiga-Tiga
set topic[5]=Aku Sayang Adik Kakak
set topic[6]=Satu-Dua-Tiga
set topic[7]=Aku Sayang Kamu

for /l %%n in (0,1,7) do ( 
   echo !topic[%%n]! 
)
echo.

@ECHO OFF
:: Check for Windows NT 4 and later

IF NOT "%OS%"=="Windows_NT" GOTO DontRun
:: Check for Windows NT 4
VER | FIND "Windows NT" >NUL && GOTO DontRun
:: Check for Windows 2000
VER | FIND "Windows 2000" >NUL && GOTO DontRun
:: Place actual code here . . .
:: End of actual code . . .
PAUSE>nul
EXIT

:DontRun
ECHO Sorry, this batch file was written for Windows XP and later versions only

