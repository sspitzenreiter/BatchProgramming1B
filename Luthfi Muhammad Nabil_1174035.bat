Rem Created by Luthfi Muhammad Nabil
@echo off
net session >nul 2>%&1
if %errorLevel%==0 (GOTO home) else (GOTO erroradmin)

:erroradmin
echo Program must run as admin
pause
GOTO end


:home
@echo off
color 16


netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security
@echo off
echo Choose Your Option
echo 1. Start Hostednetwork
echo 2. Stop Hostednetwork
echo 3. Edit Hostednetwork Profile
echo 4. About this program
echo 5. Exit
set /a isi=0
set /p isi="Choose your Option : "
cls

if %isi%==1 GOTO start
if %isi%==2 GOTO stop
if %isi%==3 GOTO edit
if %isi%==4 GOTO about
if %isi%==5 (GOTO End) else (GOTO none)


:start
netsh wlan start hostednetwork
@echo off
cls
netsh wlan show hostednetwork
echo Network Started
pause
cls
GOTO home

:stop
netsh wlan stop hostednetwork
@echo off
cls
echo Network Stopped
pause
cls
GOTO home

:edit
cls
set /p ssid="Masukan Nama Wifi : "
set /p key="Masukan Password Wifi : "
GOTO confirm

:confirm
cls
echo Nama Wifi = %ssid%
echo Password Wifi = %key%
set/p con="Is that correct?(y/n) "
if %con%==y GOTO komand 
if %con%==n (GOTO edit) else (GOTO komand)

:komand
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%key%
cls
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security
echo Hostednetwork has been setted
set /a tes=o
set /p tes="Do you want to Start the Hostednetwork? (y/n)"
if %tes%==y (GOTO start) else (GOTO home)


:about
echo Program ini membuat laptop anda dapat membuat sebuah hostednetwork
echo atau seperti tethering di handphone. 
echo.
echo.
echo ==========Created By : Luthfi Muhammad Nabil==========
echo ===================NPM : 1174035======================
pause
GOTO home

:none
echo Unknown Command
pause
GOTO home
:End