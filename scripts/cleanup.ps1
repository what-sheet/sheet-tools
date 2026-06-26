Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Users\$env:USERNAME\AppData\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

ipconfig /flushdns

Write-Host "Cleanup completed. Temporary files removed."
