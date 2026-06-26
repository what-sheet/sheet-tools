powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0

powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PERFEPP 0
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

# Deep Temp and Cache Cleanup
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Users\$env:USERNAME\AppData\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue

ipconfig /flushdns
netsh winsock reset
netsh int ip reset

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" -Name "VisualFXSetting" -Value 2 -ErrorAction SilentlyContinue

# GPU Optimization
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_VIDEO VIDEOIDLE 0
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_VIDEO VIDEOCONLOCK 0

bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes

Write-Host "PC Optimization completed. Maximum CPU and GPU performance enabled."
