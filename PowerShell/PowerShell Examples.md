# PowerShell Examples 

| Process | Script |  
| ---- | ---- |  
| Create a Variable | ```$<VarName>``` |  
| Print to Host Console (Screen) | Causes the information to be displayed in the console. <br> ```Write-Host <Message>``` |  

## Kindle Readers
| Process | Script |  
| ---- | ---- |  
| Remove Kindle Ads | ```#A simple script to remove ads from the kindle. ``` <br> ```#This version does not require prompts and can be run as a scheduled task for event 2003 (provided logging is enabled)``` <br> ```Write-Host "[*] Kindle add remover. Use at your own risk and remember to re-run after any updates!"``` <br> ```$scriptDrive = Get-Volume -FileSystemLabel Kindle``` <br> ```Write-Host 'Kindle found on drive: '$scriptDrive.DriveLetter ':\'``` <br> ```$path = -join($scriptDrive.DriveLetter,':/system')``` <br> ```Set-Location -Path $path``` <br> ```Remove-Item .assets``` <br> ```echo $null >> .assets``` <br> ```Write-Host 'Done! Your kindle should be ad free until the next update.'``` | 

## Storage Media
| Process | Script |  
| ---- | ---- |  
| Get-Storage Volume Information | List all of the Storage Media Volume Information <br> ```$scriptDrive = Get-Volume -FileSystemLabel Kindle``` |

