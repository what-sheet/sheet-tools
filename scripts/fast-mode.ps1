powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PROCTHROTTLEMIN 100
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_PROCESSOR PERFEPP 0

powercfg -setacvalueindex 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c SUB_VIDEO VIDEOIDLE 0

Write-Host "Fast Mode activated. Maximum CPU and GPU performance enabled."
