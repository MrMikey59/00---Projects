# Index of Folder DOS: Disk Operating System

1. This folder contains DOS Command Line Interface (CLI) notes, snippets and examples.


#### Command Prompt (CMD) Executable Files

- .com
- .exe
- .bat
- .cmd

#### DOS Keywords 
| Command | Description |  
| --- | --- |  
| REM | Comment line, ignored by processor. |

## Commandlets

#### MSHTML

Make a commandlet to run your HTA.

1. Create a new text file and open with Notepad.
2. Type into the text file (you may have to use quotes if the path to the .hta has spaces) '%WINDIR%\system32\mshta.exe "FULLPATH_OF_HTA\FILENAME.hta"'
3. Save the text file, then change the extension from .txt to .cmd

## Environmental Variables

| Variable Name | Description |  
| ---- | --- |
| %COMPUTERNAME%| |  
| %USERNAME%| |  
| %USERPROFILE%|Returns the folder for the current user in the form C:\Users\<UserName> |  
| %WINDIR% | Typically `C:\Windows\System` unless you chose to install it somewhere else. |

## Comments & Screen Displays (REM & ECHO)
| Action | Description |
| ---- | ---- | 
| Comment | ```REM <Put Comments Here> ```| 
| Turn Off Common Screen Output | ```@ECHO off ```| 
| Comment on Screen to User | ```ECHO <Put Status to User Here> ```| 

## Copy to Clipboard
```dos
  <DOSCommand> | clip
  Send output to the windows clipboard with pipe
```

## Kill a Task
```dos
  Taskkill /IM "iexplore.exe" /F
```

## Looping with For
```dos
  for <ValName> in (<ListCreateCommand>) do <DOSCommand>
```

## Log to a File
```dos
  SET logfile=<FilePathName>.log
  ECHO +-----------------------------------------------+>>%logfile%
  ECHO + DATE: %DATE%				+>>%logfile%
  ECHO + TIME: %TIME%				+>>%logfile%
  ECHO +-----------------------------------------------+>>%logfile%
```

## Operating System (OS) Environment
| Variable | Description |
| ---- | ---- | 
| %DATE% | System Date | 
| %TIME% | System Time | 
| %PATH% | System Search Path - comma separated folder paths |

## Register a DLL
```dos
  regsvr32 /s <DLLPathName>
```

## Run Scripts
- ```Call <ScriptName>```
- ```powershell –command <PowerShellScript>```

## Special Characters
| Character | Description | Example |
| ---- | ---- | ---- |
| . | Current Directory | |
| .. | Parent Directory | |
| < | Input from | |
| > | Output to file (new) | |
| >> | Output to file (append) | ```SET logfile=<FilePathName>.log```<BR>```ECHO + DATE: %DATE%	+>>%logfile%```<BR>```ECHO + TIME: %TIME%	+>>%logfile%  ``` |
| Pipe \| | Pass to, Chain commands| |
| @ | Ignore console repeat | |

### Update Group Policy
```dos
  gpupdate \force
```

