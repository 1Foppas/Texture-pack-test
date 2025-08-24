@echo off
setlocal enabledelayedexpansion

REM Replace text inside .properties files
for /r %%f in (*.properties) do (
    powershell -Command "(Get-Content '%%f') -replace 'armor', 'item'  | Set-Content '%%f'"
)

endlocal
echo Done!
pause
