@echo off
echo.
echo _____________________________________
echo              PILIH YAW
echo _____________________________________
echo
echo  [1] Eclipse
echo  [2] Excel
echo  [3] Power Point
echo  [4] Outlook
echo  [5] OneNote

echo .
set         /p "pil=Insert Your Choice [1-5] : "
if %pil%==1 start winword     // "winword" 
if %pil%==2 start excel       // "excel"
if %pil%==3 start powerpnt    // "powerpnt" 
if %pil%==4 start outlook     // "outlook" 
if %pil%==5 start onenote     // "onenote" 

echo.
pause


