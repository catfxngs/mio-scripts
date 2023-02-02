@ ECHO OFF

REM This script resets your IP address and flushes your DNS!

echo Renewing your IP address...

ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns

echo You have safely reset your network connection!
pause
goto end

:end