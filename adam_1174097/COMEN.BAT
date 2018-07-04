@echo off
ping localhost -n 2> nul
echo haloo semua
echo------------
echo 1 -Exit program
echo-------------
echo 2 -say hi 5 times
echo--------------
set /p QUESTION=what would you like to do today?:
echo:
IF %QUESTION%==1 GOTO :1
IF %QUESTION%==1 GOTO :2

:1

:2