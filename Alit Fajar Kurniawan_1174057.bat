@echo off 
Rem This program just displays Hello World 
set message=Halo.. Nama Saya Alit Fajar Kurniawan
echo %message%

@echo off
echo TTL : 04 Agustus 1999

@echo off

rem System provided date and time
echo %DATE%
echo %TIME%

pause

@echo off 
set list= 9 10 11 12 13 14 
(for %%a in (%list%) do ( 
   echo %%a 
))

@echo off
:start
echo.
echo 1. Buka Calculator
echo 2. Buka Microsoft Word
echo 3. Buka Microsoft Excel
echo 4. Buka Firefox
echo 5. Selesai
echo.
echo.
set /p pilihan=pilih yang akan dibuka:
IF '%pilihan%' == '%pilihan%' GOTO Item_%pilihan%
:Item_1
cls
start /MIN /DC:\Windows\System32 calc.exe
GOTO Start
:Item_2
start /MIN /D"C:\Program Files\Microsoft Office\Office12" WINWORD.EXE
GOTO Start
:Item_3
start /MIN /D"C:\Program Files\Microsoft Office\Office12" EXCEL.EXE
GOTO Start
:Item_4
start /MIN /D"C:\Program Files\Mozilla Firefox" firefox.exe http://www.google.com
GOTO Start
:Item_5
exit


