echo Off
title belajar cmd
:awal
cls
echo Belajar memanggil, menampilkan File hidden
echo.---------------------------------------------------
echo Masukan direktor
set/p input=Masukan Option:
echo ---------------------------------------------------
echo.
echo Direktori yang dipanggil %input%
echo.
echo ---------------------------------------------------
%input%:
attrib -h -s /s /d
dir
pause
goto awal