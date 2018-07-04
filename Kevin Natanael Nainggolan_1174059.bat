@echo off

:comment
Rem Program ini sebagai penghitung waktu mundur membuka cmd
echo.
echo tunggu beberapa detik... 
TIMEOUT /T 1 /NOBREAK
echo.

:folder

echo Ketik Angka untuk membuka List
echo.
echo 1. Gambar 1
echo 2. Gambar 2
echo 3. Gambar 3
echo.
set /p folder=Pilih File Yang akan Dibuka
if '%folder%' == '%folder%' GOTO item_%folder%

:item_1
start /MIN/D"C:\Users\Spitzenreiter\Desktop" 4.jpg 
GOTO folder
:item_2
start /MIN/D"C:\Users\Spitzenreiter\Desktop" 2.jpg
GOTO folder

:item_3
start /MIN/D"C:\Users\Spitzenreiter\Desktop" 3.jpg
GOTO folder
