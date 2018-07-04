@echo off
: .:: Tools Windows ::.
:Author  :jombi_par
:Mail to : jombi_par@yahoo.com
title ToolS Windows Jombi_par
:awal
cls
color 1e
echo *******************************************************
echo.
echo        SELAMAT DATANG DI TOOLS WINDOWS FILE BATCH
echo.
echo *******************************************************
:option
echo -------------------------------------------------------
echo [1] Tampilkan Folder  [4] TaskManager       [7] Ubah Password User
echo [2] Regedit           [5] shutdown/Restart  [8] Exit
echo [3] Atur startUp      [6] Lain-lain
echo =======================================================
echo.
set/p "pil=Masukan Pilihan: "
if %pil%=='' goto option
if %pil%==1 goto viewf
if %pil%==2 goto rgdt
if %pil%==3 goto aturst
if %pil%==4 goto taskmgr
if %pil%==5 goto mati
if %pil%==6 goto dll
if %pil%==7 goto akses
if %pil%==8 goto keluar
goto option
:viewf
cls
Echo Daftar Folder Dalam Direktori ini!
echo =======================================================
dir /a:d /b /p
echo =======================================================
goto awal
cls
echo Menjalankan Menu Regedit!
echo =======================================================
:rgdt
start regedit.exe
cls
goto option
:aturst
start msconfig
cls
goto option
:taskmgr
start taskmgr.exe
cls
goto option
:mati
cls
title Menu Shutdown /Restart
echo *******************************************************
echo             Pilih Menu Berikut ini !
echo *******************************************************
echo      [1] Shutdown       [2] Restart    [3] Cancel
echo.
set/p "opt=Masukan Pilhan anda:"
if %opt%==1 goto mati2
if %opt%==2 goto Restart
if %opt%==3 goto awal
if %errorlevel%==1 goto mati
:mati2
rem mematikan komputer------------
set/p "mti=echo Anda yakin Akan memtaikan komputer [Y/N]"
if %mti%==y goto mati3
if %mti%==n goto mati
:mati3
shutdown -s -t 60 -c "Simpan Data anda Karena Komputer sedang diShutdown!"
goto awal
:Restart
set/p "rst=Anda yakin Akan memtaikan komputer? [Y/N]"
if %rst%==y goto mati4
if %rst%==n goto mati
:mati4
shutdown -r -t 60 -c "Restarting komputer sedang berjalan"
goto awal
:dll
cls
title Network Tools
echo.
echo         Pilih Menu Configurasi Berikut Ini !
echo.
echo #######################################################
echo.
echo [1] Cek IP      [5] Netstat              [9] Exit
echo [2] Telnet      [6] Tracert
echo [3] Net Config  [7] Netsh
echo [4] Buka Drive  [8] Jalankan Aplikasi
echo.
echo ------------------------------------------------------
echo.
set/p "pl=Masukan Pilihan! :"
if %pl%==1 goto ip
if %pl%==4 goto drive
if %pl%==2 goto tlnet
if %pl%==3 goto netview
if %pl%==5 goto netstat
if %pl%==6 goto Tracert
if %pl%==7 goto Netsh
if %pl%==8 goto aplikasi
if %pl%==9 goto awal
:ip
cls
echo                    Menu Chek IP
echo.
echo ************************************************
echo [1] Cek IP local    [2] cekIP komputer Lain [5].Exit
echo [3] Add IP          [4] Hapus IP
echo.
set/p "p=Masukan Pilihan: "
if %p%==1 goto ip1
if %p%==2 goto ip2
if %p%==3 goto ip3
if %p%==4 goto ip4
if %p%==5 goto ip5
if %p%==''goto ip
echo.
:ip1
ipconfig
arp -a
pause
goto ip
:ip2
cls
set/p ip2=Masukan IP Tujuan:
echo.
echo IP yang anda Ping: %ip2%
echo.
echo ===============================================
echo Hasil:
ping %ip2%
pause
goto ip
:ip3
cls
echo.
set/p ip=Masukan IP       :
set/p subnet=Masukan Net Mask :
echo.
echo Hasil Perubahan IP :
echo ===============================================
netsh int ip add address "Local Area Connection" %ip% %subnet%
netsh int ip show address
echo.
pause
goto dll
:ip4
cls
echo.
set/p ip=Masukan IP yang akan dihapus :
netsh interface ip delete address "Local Area Connection" addr=%ip% gateway=all
echo.
pause
goto dll
:ip5
goto dll
:Drive
cls
set/p drive=Masukan Drive Yang akan dibuka!:
%drive%:
dir
pause
goto dll
cls
:tlnet
echo Masukan IP yang akan di hubungi beserta portnya!
echo Misal: -> 192.168.16.20 80
set/p "tnet=Input IP :"
telnet %tnet%
pause
goto dll
:netview
echo Masukan Option !:[View], [user], [computer], [share],[account],[config],[Start],dll
set/p "opt=Option:"
net %opt%
pause
goto dll
:netstat
echo Masukan Option eg: NETSTAT [-a] [-b] [-e] [-n] [-o] [-p proto] [-r] [-s] [-v] [interval]
set/p "ip=IP     : "
set/p "opt=Option : "
Netstat %opt% %ip%
pause
goto dll
:Tracert
echo masukan Option : [-d , -h maximum, -j host-list, -w timeout ]
echo.
echo -------------------------------------------------------
set/p "ip=IP      :"
set/p "opt=Option  :"
tracert %opt% %ip%
pause
goto dll
:netsh
echo Masukan Option: add, bridge, delete, diag , dump, winsock,
echo                 firewall, help, interface, ras, routing, set, show,exec
echo.
echo -------------------------------------------------------
Netsh
pause
goto dll
:aplikasi
echo Ketikan Aplikasi yang akan anda jalankan! Misal :cmd.exe
echo.
set/p "input=Jalankan :"
start %input%
pause
goto dll
:akses
cls
echo.
echo         Reset Password User!
echo =======================================
echo.
echo User Dikomputer ini!:
echo ---------------------------------------
rem cek user yang ada
net user
echo.
rem cek salah satu user
set/p "ad=Masukan Nama User yang akan dicek:"
echo Hasil:
net user %ad%
echo Reset Password Adminitrator
echo.
set/p "ad=Masukan Nama Adminnya:"
set/p "ps=Password Login       :"
net user %ad% %ps%
echo.
pause
goto dll
:keluar
Exit