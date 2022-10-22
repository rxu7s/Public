@echo off
powershell.exe -windowstyle Hidden -command
cd %temp%

start ping 127.0.0.1 -t -l 32

:: <ip> <byte>
:: max byte 65500