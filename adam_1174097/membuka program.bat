@echo off
cls
:start
echo.
echo 1. open WORD
echo 2. Buka Calculator
echo 3. Buka Microsoft VISIO
echo 4. Buka Microsoft EXCEL
echo 5. Buka Microsoft power point
echo 6. Selesai
echo.
echo.
set /p pilihan=pilih yang akan dibuka:
IF '%pilihan%' == '%pilihan%' GOTO Item_%pilihan%
:Item_1
start /MIN /D"C:\Program Files\Microsoft Office\Office12" WINWORD.EXE
GOTO Start
:Item_2
start /MIN /DC:\Windows\System32 calc.exe
GOTO Start
:Item_3
start /MIN /D"C:\Program Files\Microsoft Office\Office12" VISIO.EXE
GOTO Start
:Item_4
start /MIN /D"C:\Program Files\Microsoft Office\Office12" EXCEL.EXE
GOTO Start
:Item_5
start /MIN /D"C:\Program Files\Microsoft Office\Office12" POWERPNT.EXE
GOTO Start
:Item_6
exit
