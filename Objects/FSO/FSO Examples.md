# File System Operations FSO) Examples

## Basics

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

