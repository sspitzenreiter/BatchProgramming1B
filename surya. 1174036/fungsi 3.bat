@echo Off

title belajar cmd
:awal
cls
color 1e
echo Belajar menjalankan perintah ping
echo.---------------------------------------------------
echo Masukan direktor
set/p "input=Masukan IP:"
echo ---------------------------------------------------
echo.
echo IP yang anda Ping: %input%
echo.
echo ---------------------------------------------------
ping %input%
pause
goto awal