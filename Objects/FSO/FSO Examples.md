# File System Operations FSO) Examples

## Basics

#### Create a File
Requires:

- objFSO

```vbscript
Sub CreateAfile
 Dim objFile
 Set objFile = objFSO.CreateTextFile(<FilePathName>, True)
 <VBCommands>
 objFile.Close
 Set objFile = Nothing
End Sub
```

#### Create a File Name Based on Date & Time
```vbscript
Function CreateFileName(BaseFileName as String, _
     nthFile As Integer) As String
 Dim path As String, y As String, _
   m As String, d As String
 path = "C:\"
 y = Year(Date)
 m = Month(Date)
 d = Day(Date)
 CreateFileName = path & BaseFileName & _
          y & "-" & m & "-" & d & _
          " - " & CStr(nthFile)
End Function
```
A Calling Example:
```vbscript
Dim nthFileOfTheDay As Integer, fName As String
For nthFileOfTheDay = 1 To 10
 fName = CreateFileName(nthFileOfTheDay)
 <VBCommands> 
Next nthFileOfTheDay
```

#### Load a File
Requires:

- objFSO

```vbscript
Function LoadFile(strFileName)
 Dim objLoadFile
 Set objLoadFile = objFSO.OpenTextFile(strFileName, ForReading)
 LoadFile = Trim(objLoadFile.ReadAll())
 objLoadFile.Close
 Set objLoadFile = Nothing
End Function
```
#### Open a File for Appending, Reading or Writing

```vbscript
Dim objInfoFile
[ Set objInfoFile = objFSO.OpenTextFile(<FileName>, 8, True) ' For Appending |
Set objInfoFile = objFSO.OpenTextFile(<FileName>, 1, True) ' For Reading |
Set objInfoFile = objFSO.OpenTextFile(<FileName>, 2, True) ' For Writing ]
```

#### Get a Files Version
Requires:

- objFSO

```vbscript
Function GetVersion(filepath)
'* Description: Gets the version of the file
'* Input(s): File
'* Return(s): Version Number
 Dim majorVer  : majorVer = "1"
 Dim foundVer, arrVer 
 If (objFSO.FileExists(filepath)) Then
  foundVer = objFSO.GetFileVersion(filePath)
  arrVer = split(foundVer,".",-1)
  ReDim Preserve arrVer(2)
  GetVersion = majorVer & "." & arrVer(0) & "." & arrVer(1) & "_" & arrVer(2)
 Else
   GetVersion = Null
 End If
End Function
```

#### Use a File Set Array
```vbscript
Dim FileSet as Array
 FileSet = Array("wcncsvc.dll", "wcnapi.dll", "fdwcn.dll", "wcneapauthproxy.dll", "wcneappeerproxy.dll", "wcnwiz.dll", "wcnnetsh.dll", "wczdlg.dll")
 Dim file, fileProp
 For Each file in FileSet
   <VBCommands>
 Next file
 Set fileProp = objWMIService.ExecQuery (strQuery)
 For Each objFile in fileProp
   <VBCommands>
 Next
```

## Change Attributes of Files

#### Remove Read-Only
Requires:

- objFSO

```vbscript
Function RemoveReadOnly( strFilePath )
  Dim objFile
' MsgBox "Checking if " & strFilePath & " is marked as read only.", True
  If objFSO.FileExists( strFilePath ) Then
    Set objFile = objFSO.GetFile( strFilePath )
    If objFile.Attributes AND 1 Then
'     MsgBox "The file: " & strFilePath & vbCRLF & _
'     "is marked as read only. Attempting to clear this...",_
'       True
      objFile.Attributes = objFile.Attributes XOR 1
    Else
      MsgBox "The file: " & strFilePath & vbCRLF & _
      "is not marked as read only.", True
    End If
  Else
    MsgBox "The file: " & strFilePath & vbCRLF & "does not exist.", True
  End If
End Function 
```
#### Set Baseline Permissions
Requires:

- objFSO

```vbscript
Sub BaselinePermissions(fullpath, strState)
'* Description: Sets the Baseline File permissions
'* Input(s): Full Path of file, READ or WRITE
 Dim objPerm
 Set objPerm = objFSO.GetFile(fullpath)
 If UCase(strState) = "READ" Then
  objPerm.Attributes = 1
 ElseIf UCase(strState) = "WRITE" Then
  objPerm.Attributes = 0
 End If
End Sub
```

## Checks & Tests

#### Verify File Exist
Requires:

- objFSO

```vbscript
Function VerifyFile(FilePathName as String)
  VerifyNetlogonFile = False
  If ObjFSO.FileExists(FilePathName) Then
    VerifyNetlogonFile = True
  End If
End Function
```

#### Verify a Folder Exists, Create is required.
```vbscript
Dim configFolder
configFolder = "config"
if Not objFSO.FolderExists(configFolder) Then
  objFSO.CreateFolder configFolder
End If
```

## File Browser Example  
Make sure you change the variables in Window_OnLoad to set the correct command line tool and you will need to set the correct AllowFileExt as well.  
Finally, you can use this tool to protect your HTA source code and make them *.EXE executables (32-bit or 64-bit).  
```vbscript
Dim SourceDir, FullName, arrFN
Dim ToolFileName
Dim CommandFile
Const AllowFileExt = "CSV"
Const Width = 500
Const Height = 130
' get the directory of the HTA
FullName = Replace(hta_utility.commandLine, Chr(34), "")  
arrFN = Split(FullName, "\")  
FileName = arrFN(Ubound(arrFN))  
SourceDir = Replace(FullName, FileName, "")  
 
Function FileExists(filename)
    Set fso = CreateObject("Scripting.FileSystemObject")    
    If (fso.FileExists(filename)) Then
       FileExists = True
    Else
       FileExists = False
    End If
    Set fso = Nothing
End Function
 
Sub DoResize
    'resize   
    window.resizeTo Width, Height
    screenWidth = Document.ParentWindow.Screen.AvailWidth
    screenHeight = Document.ParentWindow.Screen.AvailHeight
    posLeft = (screenWidth - Width) / 2
    posTop = (screenHeight - Height) / 2     
    'move to centerscreen
    window.moveTo posLeft, posTop
End Sub
  
Sub Window_OnLoad
  DoResize
  ' set tool file paths
  ToolFileName = SourceDir & "CSV.vbs"
  CommandFile = "cscript.exe" & " " & Chr(34) & ToolFileName & Chr(34)
End Sub
 
' Script to process the file
Sub OnClickButtonButton1()
  If FileExists(ToolFileName) Then
    If FileExists(file.value) Then
        Set fso = CreateObject("Scripting.FileSystemObject")   
        If (UCase(fso.GetExtensionName(file.value)) = AllowFileExt) Then
            Set obj = CreateObject("WScript.Shell")
            obj.Run CommandFile & " " & Chr(34) & file.value & Chr(34), 0, True
            MsgBox "Done"
            Set obj = Nothing
        Else
            MsgBox ToolFileName & " is not " & AllowFileExt
        End If          
        Set fso = Nothing
    Else
        MsgBox "File Not Found: " & file.value
    End If
  Else
    MsgBox ToolFileName & " not found!"
  End If
End Sub
```

Call the script:
```html
<input type="file" name="file" value="file"/>
<input type="button" name="Button1" id="Button1" value="Process" onclick="OnClickButtonButton1">
```

## Path Manipulations

#### Test Path String 
```vbscript
Dim YourFile as String
If Right(filExample.Path,1) = "\" Then
 YourFile = filExample.Path + filExample.FileName
Else
 YourFile = filExample.Path + "\" + filExample.FileName
End If
```

## Working with INI Files

#### Work with a Congiuration File
Requires:  

- objFSO

```vbscript
Dim objConfigFile as Object, _
    strFilePath as String
Set objConfigFile = objFSO.OpenTextFile(strFilePath)
  Do While Not objConfigFile.AtEndOfStream
    <VBCommands>
  Loop
  objConfigFile.ReadLine
Set objConfigFile = Nothing
```

#### Process an INI File
Requires:  

- objFSO
- GetDomain Procedure
- ValidateString Procedure

```vbscript
' Reads the passed file and then parses based on INI standards
Sub ProcessINI(ByVal strFile)
  Dim objFile, strText, arrLines, strLine, arrSpecific
  Dim objDictionary, arrEntries, strEntry, arrShortDomain
  Set objDictionary = CreateObject("Scripting.Dictionary")
  Dim strDomain, ptnValidChars
  strDomain = GetDomain()
  ptnValidChars = "[A-Za-z0-9-._:=[\]?+~*]"
  If objFSO.FileExists(strFile) Then
    Set objFile = objFSO.OpenTextFile(strFile, ForReading)
    strText = objFile.ReadAll
    objFile.Close
    Set objFile = Nothing
    arrLines = Split(strText, vbCrLf)
    For Each strLine In arrLines
      If Not Left(strLine, 1) = ";" And Not Len(strLine) = 0 And Not InStr(strLine, "|") = 0 Then
        arrSpecific = Split(strLine, "|")
        If Not InStr(arrSpecific(0), ".") = 0 Then
          If UCase(arrSpecific(0)) = UCase(strDomain) Then
            arrEntries = Split(arrSpecific(1), ";")
            For Each strEntry In arrEntries
              If Not Len(strEntry) = 0 Then
                If ValidateString(ptnValidChars, strEntry) Then
                  If Not objDictionary.Exists(strEntry) Then objDictionary.Add strEntry, strEntry
                End If
              End If
            Next
          End If
        Else
          arrShortDomain = Split(strDomain, ".")
          If UCase(arrSpecific(0)) = UCase(arrShortDomain(0)) Then
            arrEntries = Split(arrSpecific(1), ";")
            For Each strEntry In arrEntries
              If Not Len(strEntry) = 0 Then
                If ValidateString(ptnValidChars, strEntry) Then
                  If Not objDictionary.Exists(strEntry) Then objDictionary.Add strEntry, strEntry
                End If
              End If
            Next
          End If
        End If
      End If
    Next
    strFinalExceptions = Join(objDictionary.Items, ";")
  Else
    WScript.Quit 1
  End If
End Sub
```

