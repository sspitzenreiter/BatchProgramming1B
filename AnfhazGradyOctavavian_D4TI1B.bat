@echo off
:start 
@echo off 
set message=Welcome 
echo %message%

@echo off 
:checking
SET benar1=String1 
SET salah2=String2 
if %benar1%==String1 echo "Anfhaz Grady Octavavian" 
if %salah2%==String3 echo "Bernilai salah"

@echo off
:awal
SET /A a=20 
SET /A b=25 
SET /A c=%a% + %b% 
echo %c% 
SET /A c=%a% - %b% 
echo %c% 
SET /A c=%b% / %a% 
echo %c% 
SET /A c=%b% * %a% 
echo %c%


@echo off
:date
echo %TIME%

@echo off
:net
NET CONFIG

