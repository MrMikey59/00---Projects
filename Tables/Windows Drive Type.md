| Type | Drive | Notes | 
| ------ | ----- | ----- | 
| 0 | Unknown | |
| 1 | Removable | USB and other portable drives. |
| 2 | Fixed | HDD & SSD permanently mounted. |
| 3| Network | Mapped over the Network |
| 4| CD-ROM | Includes all Optical Media Types |
| 5 | RAM Disk | Special system memory storage area. |

  Using Drive Type
  ```JavaScript
  Set objFSO = CreateObject("Scripting.FileSystemObject")
  Set colDrives = objFSO.Drives
  outputHTML = "<p>Please click a drive to start navigation.</p>"
  For Each objDrive in colDrives
    If objDrive.IsReady Then
      Dim t
      Select Case objDrive.DriveType
        Case 0: t = "Unknown"
        Case 1: t = "Removable"
        Case 2: t = "Fixed"
        Case 3: t = "Network"
        Case 4: t = "CD-ROM"
        Case 5: t = "RAM Disk"
      End Select
      outputHTML = outputHTML & "<span onClick=""ListFolder(&quot;" _
        & objDrive.DriveLetter _
        & ":\&quot;)"" onmouseover=""Pointer"" onmouseout=""DefaultCursor"">" _
        & objDrive.DriveLetter & ":\ (" & t & ")</span><br>"
    End If
  Next
```
