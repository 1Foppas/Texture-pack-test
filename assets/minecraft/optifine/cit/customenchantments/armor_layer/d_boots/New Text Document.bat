@echo off
REM Run PowerShell from this batch file
powershell -NoProfile -Command ^
  "$names = 'immunity','ninja','weightless','reinforce';" ^
  "foreach ($prefix in 'diamond','netherite') {" ^
  "  $src = $prefix + '_boots.png';" ^
  "  foreach ($name in $names) {" ^
  "    Copy-Item $src ($prefix + '_' + $name + '.png') -Force" ^
  "  }" ^
  "}"

pause
