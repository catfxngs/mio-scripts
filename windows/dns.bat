@ECHO OFF

echo Configuring CloudFlare DNS...
netsh interface ipv4 set dnsservers "Wi-Fi" static 1.1.1.2 primary
netsh interface ipv4 add dnsservers "Wi-Fi" 1.0.0.2 index=2

REM !!! Remove all "REM" comments below for IPv6 configurations

REM netsh interface ipv6 set dnsservers "Wi-Fi" static 2606:4700:4700:0:0:0:0:1112 primary
REM netsh interface ipv6 add dnsservers "Wi-Fi" 2606:4700:4700:0:0:0:0:1002 index=2

echo Current DNS Settings:
ipconfig /all | findstr /c:"1.1.1.2"
ipconfig /all | findstr /c:"1.0.0.2"
REM ipconfig /all | findstr /c:"2606:4700:4700:0:0:0:0:1112"
REM ipconfig /all | findstr /c:"2606:4700:4700:0:0:0:0:1002"
pause
goto end

:end