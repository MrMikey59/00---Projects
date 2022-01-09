# File Systems Object (FSO)

## Common Constants and Variables
| CV Name | Description |
| ---- | ---- |
| FilePathName | `Dim FilePathName as String` <BR> `FilePathName = <FilePathName>` |  
| ForReading | `Const ForReading = 1` |
| ForWriting | `Const ForWriting = 2` |
| ForAppending | `Const ForAppending = 8` |
| INI File | `Dim iniFile` <br> `iniFile = "<FilePathName>.ini"` |
| objFile | `Dim objFile as Object` <br> `Set objFile = objFSO.OpenTextFile(FileName, 1, True) ' For Reading ??` <br> `Set objFile = objFSO.OpenTextFile(FileName, 2, True) ' For Writing` <br> `Set objFile = objFSO.OpenTextFile(FileName, 8, True) ' For Appending` <br> `Set objFile = Nothing`|
| objFSO | `Dim objFSO as Object ` <BR> `Set objFSO = CreateObject("Scripting.FileSystemObject")` <br> `Set objFSO = Nothing` |

### Common File Type Lists

| File Types | Example Code |  
| ---- | ---- |  
| Archive | ``var ArchiveFiles = "7z\|gz\|rar\|tar\|zip"; `` |  
| Audio | ``var AudioVideoFiles = " aac\|avi\|flv\|mp(3\|4\|e?g\)\|mov\|wma\|wmv "; `` |  
| Documents | ``var DocFiles=" csv\|doc\|doc\|pdf\|ppt\|txt\|xls\|xlsx\|xml"; `` |  
| Image | ``var ImageFiles = "gif\|jpe?g\|png"; `` |  
| Script | ``var ScriptFiles="bas\|bat\|c\|class\|cmd\|coffee\|cpp\|cs\|java\|js\|mod\|ps(1\|2\)\|ts\|vb"; ``  |  
| Others | var OtherFiles = "exe\|js\|sit\|torrent";  |  

**Usage:** 
```javascript
var LinkTest = new RegExp("\\.("+<FileList>t+")$","i"); 
```

## FSO Properties & Methods
| Property/Method | Description |
| ---- | ---- |  
| CopyFile | ---- |  
| CreateTextFile | ---- |  
| FileExists(<FileName>) | ---- |  
| FolderExists(<FolderName>) | ---- |  
| GetFile | |  

## File Object Properties & Methods
| Property/Method | Description |
| ---- | ---- |  
| AdapterType | |  
| AutoSense | |  
| Availability | |  
| Close | |  
| CreationDate | |  
| Description | |  
| ErrorCleared | |  
| ErrorDescription | |  
| GUID | |   
| Index | |  
| InstallDate | |
| Installed | |
| InterfaceIndex | |
| InUseCount | |
| LastErrorCode | |
| MACAddress | |
| Manufacturer | |
| MaxSpeed | |
| Name | |
| NetConnectionStatus | |
| NetEnabled | |
| NetworkAddresses | |
| PermanentAddress | |
| PhysicalAdapter | |
| PNPDeviceID | |
| ProductName | |
| ServiceName | |
| Speed | |
| Status | |
| SystemName | |
| TimeOfLastReset | |
| Version | |
| Write(<Message>) | |
| WriteLine(<Message>) | |   

