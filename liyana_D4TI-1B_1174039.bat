@echo off
:start
set message=Selamat Pagi
echo %message%

@echo off
:start
set list= 4 5 6 
(for %%a in (%list%) do (
   echo %%a
   ))
   
   
@echo off
:awal
 SET /A a=5
SET /A b=10
SET /A c=%a% * %b% 
if %c%==50 echo "hasilnya adalah  50" 
if %c%==10 echo "hasilnya adalah 50"


@echo off 
:awal
echo %DATE%


@echo off 
:start
set len=3 
set obj[0].Name=liyana
set obj[0].ID=1 
set obj[1].Name=ratu
set obj[1].ID=2 
set obj[2].Name=reyhan
set obj[2].ID=3 
set i=0 
:loop 

if %i% equ %len% goto :eof 
set cur.Name= liyana
set cur.ID=1

for /f "usebackq delims==.tokens=1-3" %%j in (`set obj[%i%]`) do ( 
   set cur.%%k=%%l 
) 
echo Name=%cur.Name% 
echo Value=%cur.ID% 
set /a i=%i%+1 
goto loop



