# WMI Services Object

# Example Code

### Get Miracast Information
Requires:

- objFSO
- objShell
- outputFile

```vbscript
Sub GetMiracastInfo(outputFile)
' Assumes objFSO & objShell are open.
  On Error Resume Next
  outputFile.WriteLine("----------------------------")
  outputFile.WriteLine("-------+ Wireless Display Information +------")
  outputFile.WriteLine("----------------------------")
  outputFile.Close
' Write the file with the directx diagnostics
  cmd = "cmd /c dxdiag /t dxdiag.txt"
  objShell.Run cmd, 0, True
' Write the file with the dispdiag information
  cmd = "cmd /c dispdiag -out dispdiag_stop.dat"
  objShell.Run cmd, 0, True
' Write the wlan information to the output file (wlaninfo.txt)
  cmd = "cmd /c time /t  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c netsh wl show i  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c netsh wl show d  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c netsh wlan show interfaces  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c netsh wlan sho net m=b  >> " & outputFile.Name
  objShell.Run cmd, 0, True
End Sub
```

### Get WCN Information
Requires:

- objFSO
- objShell
- objWMIService

```vbscript
Sub GetWcnInfo(outputFile)
  On Error Resume Next
  outputFile.WriteLine("-------------------------------------------")
  outputFile.WriteLine("---+ WCN Information & + Services Status---")
  outputFile.WriteLine("-------------------------------------------")
' outputFile.Close
' Query for servces
  cmd = "cmd /c sc query wcncsvc  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c sc query wlansvc  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c sc query eaphost  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c sc query fdrespub  >> " & outputFile.Name
  objShell.Run cmd, 0, True
  cmd = "cmd /c sc query upnphost   >> " & outputFile.Name
  objShell.Run cmd, 0, True
  outputFile.WriteLine("------------------------")
  outputFile.WriteLine("+ WCN Files Information ")
  outputFile.WriteLine("------------------------")
  outputFile.WriteLine("")
  Dim windir, FileSet, file, FileName, strQuery, fileProp, _
      AdapterProp, objFile, strAvail
  windir = objShell.ExpandEnvironmentStrings("%windir%\system32\")
  FileSet = Array("wcncsvc.dll", "wcnapi.dll", "fdwcn.dll", "wcneapauthproxy.dll", "wcneappeerproxy.dll", "wcnwiz.dll", "wcnnetsh.dll", "wczdlg.dll")
  For Each file in FileSet
    filename = windir + file
    strQuery = "Select * from CIM_Datafile Where Name = '" + Replace(filename, "\", "\\") + "'"
    Set fileProp = objWMIService.ExecQuery (strQuery)
    For Each objFile in fileProp
      outputFile.WriteLine("")
      outputFile.WriteLine("---------------------")
      outputFile.WriteLine(file)
      outputFile.WriteLine("---------------------")
      outputFile.WriteLine("  - Version     :    " + objFile.Version )
      outputFile.WriteLine("  - Creation Date    :   " + objFile.CreationDate  )
      outputFile.WriteLine("  - Description    :   " + objFile.Description  )
      outputFile.WriteLine("  - Installation Date  :   " + objFile.InstallDate )
      outputFile.WriteLine("  - In Use Count    :  " + objFile.InUseCount   )
      outputFile.WriteLine("  - Last Accessed    :   " + objFile.LastAccessed  )
      outputFile.WriteLine("  - Last Modified   :   " + objFile.LastModified  )
      outputFile.WriteLine("  - Status    :   " + objFile.Status  )
    Next
  Next
  outputFile.WriteLine("-------------------------------")
  outputFile.WriteLine("+ Network Adapters Information ")
  outputFile.WriteLine("-------------------------------")
  outputFile.WriteLine("")
  strQuery = "Select * from Win32_NetworkAdapter "
  Set AdapterProp = objWMIService.ExecQuery (strQuery)
  For Each objFile in AdapterProp
    outputFile.WriteLine("")
    outputFile.WriteLine("---------------------")
    outputFile.WriteLine("DeviceID  :  " + objFile.DeviceID   )
    outputFile.WriteLine("---------------------")
    outputFile.WriteLine("  - Adapter Type    :    " + objFile.AdapterType  )
    outputFile.WriteLine("  - Auto Sense      :   " + objFile.AutoSense )
    outputFile.WriteLine("  - Description     :   " + objFile.Description   )
    outputFile.WriteLine("  - NetConnectionID    :   " + objFile.NetConnectionID   )
    outputFile.WriteLine("  - GUID       :   " + objFile.GUID )
    outputFile.WriteLine("  - MACAddress      :   " + objFile.MACAddress  )
    outputFile.WriteLine("  - Manufacturer     :   " + objFile.Manufacturer   )
    outputFile.WriteLine("  - MaxSpeed    :   " + objFile.MaxSpeed  )
    outputFile.WriteLine("  - Speed        :   " +  objFile.Speed  )
    outputFile.WriteLine("  - Name       :   " + objFile.Name   )
    Select Case objFile.NetConnectionStatus
      Case 0   strAvail= "Disconnected"
      Case 1   strAvail= "Connecting"
      Case 2   strAvail= "Connected"
      Case 3   strAvail= "Disconnecting"
      Case 4   strAvail= "Hardware not present"
      Case 5   strAvail= "Hardware disabled"
      Case 6   strAvail= "Hardware malfunction"
      Case 7   strAvail= "Media disconnected"
      Case 8   strAvail= "Authenticating"
      Case 9   strAvail= "Authentication succeeded"
      Case 10  strAvail= "Authentication failed"
      Case 11  strAvail= "Invalid address"
      Case 12  strAvail= "Credentials required"
    End Select
    outputFile.WriteLine("  - NetConnectionStatus  :   " + strAvail )
    outputFile.WriteLine("  - NetEnabled    :   " +  objFile.NetEnabled  )
    outputFile.WriteLine("  - NetworkAddresses     :   " +  objFile.NetworkAddresses  )
    outputFile.WriteLine("  - PermanentAddress    :   " +  objFile.PermanentAddress   )
    outputFile.WriteLine("  - PhysicalAdapter    :   " +  objFile.PhysicalAdapter   )
    outputFile.WriteLine("  - PNPDeviceID     :   " +  objFile.PNPDeviceID  )
    outputFile.WriteLine("  - ProductName      :   " +  objFile.ProductName   )
    outputFile.WriteLine("  - ServiceName       :   " +  objFile.ServiceName    )
    outputFile.WriteLine("  - SystemName       :   " + objFile.SystemName     )
    outputFile.WriteLine("  - TimeOfLastReset  :   " + objFile.TimeOfLastReset )
    outputFile.WriteLine("  - Status      :   " + objFile.Status    )
    Select Case objFile.StatusInfo
      Case 1   strAvail= "Other"
      Case 2   strAvail= "Unknown"
      Case 3   strAvail= "Enabled"
      Case 4   strAvail= "Disabled"
      Case 5   strAvail= "Not Applicable"
    End Select
    outputFile.WriteLine("  - StatusInfo    :   " + strAvail )
    Select Case objFile.Availability
      Case 1   strAvail= "Other"
      Case 2   strAvail= "Unknown"
      Case 3   strAvail= "Running or Full Power"
      Case 4   strAvail= "Warning"
      Case 5   strAvail= "In test"
      Case 6   strAvail= "Not Applicable"
      Case 7   strAvail= "Power Off"
      Case 8   strAvail= "Off Line"
      Case 9   strAvail= "Off Duty"
      Case 10  strAvail= "Degraded"
      Case 11  strAvail= "Not Installed"
      Case 12  strAvail= "Install Error"
      Case 13  strAvail= "Power Save - Unknown"
      Case 14  strAvail= "Power Save - Low Power Mode"
      Case 15  strAvail= "Power Save - Standby"
      Case 16  strAvail= "Power Cycle"
      Case 17  strAvail= "Power Save - Warning"
    End Select
    outputFile.WriteLine("  - Availability    :   " + strAvail )
    outputFile.WriteLine("  - Caption     :   " +  objFile.Caption )
    Select Case objFile.ConfigManagerErrorCode
      Case 0   strAvail= "Device is working properly"
      Case 1   strAvail= "Device is not configured correctly"
      Case 2   strAvail= "Windows cannot load the driver for this device"
      Case 3   strAvail= "Driver for this device might be corrupted, or the system may be low on memory or other resources"
      Case 4   strAvail= "Device is not working properly. One of its drivers or the registry might be corrupted."
      Case 5   strAvail= "Driver for the device requires a resource that Windows cannot manage."
      Case 6   strAvail= "Boot configuration for the device conflicts with other devices"
      Case 7   strAvail= "Cannot filter"
      Case 8   strAvail= "Driver loader for the device is missing"
      Case 9   strAvail= "Device is not working properly. The controlling firmware is incorrectly reporting the resources for the device"
      Case 10  strAvail= "Device cannot start"
      Case 11  strAvail= "Device failed"
      Case 12  strAvail= "Device cannot find enough free resources to use"
      Case 13  strAvail= "Windows cannot verify the device's resources"
      Case 14  strAvail= "Device cannot work properly until the computer is restarted"
      Case 15  strAvail= "Device is not working properly due to a possible re-enumeration problem"
      Case 16  strAvail= "Windows cannot identify all of the resources that the device uses"
      Case 17  strAvail= "Device is requesting an unknown resource type."
      Case 18  strAvail= "Device drivers must be reinstalled"
      Case 19  strAvail= "Failure using the VxD loader"
      Case 20  strAvail= "Registry might be corrupted."
      Case 21  strAvail= "System failure. If changing the device driver is ineffective, see the hardware documentation. Windows is removing the device"
      Case 22  strAvail= "Device is disabled"
      Case 23  strAvail= "System failure. If changing the device driver is ineffective, see the hardware documentation"
      Case 24  strAvail= "Device is not present, not working properly, or does not have all of its drivers installed."
      Case 25  strAvail= "Windows is still setting up the device"
      Case 27  strAvail= "Device does not have valid log configuration."
      Case 28  strAvail= "Device drivers are not installed."
      Case 29  strAvail= "Device is disabled. The device firmware did not provide the required resources."
      Case 30  strAvail= "Device is using an IRQ resource that another device is using."
      Case 31  strAvail= "Device is not working properly. Windows cannot load the required device drivers."
    End Select
    outputFile.WriteLine("  - ConfigManagerErrorCode:  " + strAvail )
    outputFile.WriteLine("  - Error Cleared   :   " + objFile.ErrorCleared )
    outputFile.WriteLine("  - Error Description    :   " + objFile.ErrorDescription)
    outputFile.WriteLine("  - LastErrorCode    :   " + objFile.LastErrorCode)
    outputFile.WriteLine("  - Index      :   " + objFile.Index)
    outputFile.WriteLine("  - Installed    :   " + objFile.Installed  )
    outputFile.WriteLine("  - Install Date     :   " + objFile.InstallDate   )
    outputFile.WriteLine("  - InterfaceIndex   :   " + objFile.InterfaceIndex )
  Next
  outputFile.WriteLine("")
  outputFile.WriteLine("-----------------------")
  outputFile.WriteLine("+ ipconfig information")
  outputFile.WriteLine("-----------------------")
  outputFile.WriteLine("")
  cmd = "cmd /c ipconfig /all >> " & outputFile.Name
  objShell.Run cmd, 0, True
  outputFile.WriteLine("")
  outputFile.WriteLine("----------------------")
  outputFile.WriteLine("+ Softap Capabilities ")
  outputFile.WriteLine("----------------------")
  outputFile.WriteLine("")
  outputFile.Close
  cmd = "cmd /c netsh wlan show device >> " & outputFile.Name
  objShell.Run cmd, 0, True
  outputFile.WriteLine("")
  outputFile.WriteLine("----------------------")
  outputFile.WriteLine("+ Dump wcncsvc RegKey ")
  outputFile.WriteLine("----------------------")
  outputFile.WriteLine("")
  cmd = "cmd /c reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc\Parameters >> " & outputFile.Name
  objShell.Run cmd, 0, True
  outputFile.WriteLine("")
  outputFile.WriteLine("--------------------------------")
  outputFile.WriteLine("+ Network Discovery Information.")
  outputFile.WriteLine("--------------------------------")
  outputFile.WriteLine("")
  outputFile.WriteLine("")
  outputFile.WriteLine("------------------------------")
  outputFile.WriteLine("- Current Profile information")
  outputFile.WriteLine("------------------------------")
  outputFile.WriteLine("")
  ' Profile Type
  Const NET_FW_PROFILE2_DOMAIN = 1
  Const NET_FW_PROFILE2_PRIVATE = 2
  Const NET_FW_PROFILE2_PUBLIC = 4
  ' Direction
  Const NET_FW_RULE_DIR_IN = 1
  Const NET_FW_RULE_DIR_OUT = 2
  ' Create the FwPolicy2 object.
  Dim fwPolicy2, ProfileType, CurrentProfile
  ProfileType = Array("Domain", "Private", "Public")
  Set fwPolicy2 = CreateObject("HNetCfg.FwPolicy2")
  CurrentProfile = fwPolicy2.CurrentProfileTypes
  outputFile.WriteLine ("Current firewall profile is: ")
' The returned 'CurrentProfiles' bitmask can have more than 1 bit set 
' if multiple profiles are active or current at the same time
  if ( CurrentProfile AND NET_FW_PROFILE2_DOMAIN ) then
    outputFile.WriteLine(ProfileType(0))
  end if
  if ( CurrentProfile AND NET_FW_PROFILE2_PRIVATE ) then
    outputFile.WriteLine(ProfileType(1))
  end if
  if ( CurrentProfile AND NET_FW_PROFILE2_PUBLIC ) then
    outputFile.WriteLine(ProfileType(2))
  end if
  cmd = "cmd /c netsh advfirewall show currentprofile >> " & outputFile.Name
  objShell.Run cmd, 0, True
  outputFile.WriteLine("")
  outputFile.WriteLine("----------------------------------------------")
  outputFile.WriteLine("- Network discovery status for current profile")
  outputFile.WriteLine("----------------------------------------------")
  outputFile.WriteLine("")
' Get the Rules object
  Dim rule, RulesObject
  Set RulesObject = fwPolicy2.Rules
  For Each rule In Rulesobject
    if rule.Grouping = "@FirewallAPI.dll,-32752" then
      outputFile.WriteLine("")
      outputFile.WriteLine("  Rule Name:      " & rule.Name)
      outputFile.WriteLine("   ----------------------------------------------")
      outputFile.WriteLine("  Enabled:      " & rule.Enabled)
      outputFile.WriteLine("  Description:    " & rule.Description)
      outputFile.WriteLine("  Application Name:   " & rule.ApplicationName)
      outputFile.WriteLine("  Service Name:     " & rule.ServiceName)
    Select Case rule.Direction
        Case NET_FW_RULE_DIR_IN  outputFile.WriteLine("  Direction:      In")
       Case NET_FW_RULE_DIR_OUT outputFile.WriteLine("  Direction:      Out")
      End Select
    end if
  Next
End Sub
```

### Search Installed Apps
Requires:

- objReg
- GetHiveName
- GuidExcludes

```vbscript
Function SearchInstalls(ByVal strHive, ByVal strKeyPath, ByVal strVal, ByVal strSearch)
'* Function to search for a string in registry *
'* subkey values via WMI            *
'* Used to search appwiz for installed software *
'* and return their GUID            *
 Dim hiveName, strValPath, value, strVersion, _
   strValText, arrSubKeys, Subkey, _
   arrValueNames, arrValueTypes, i, _
 hiveName = GetHiveName(strHive)
 If strVal = "" Then
  strValText = "(Default)"
 Else
  strValText = strVal
 End If
 WScript.Echo("Searching registry >> KEY: " & hiveName & "\" & strKeyPath & " >> VALUE: " & strValText & " >> STRING: " & strSearch & vbLf)
 foundbool = False
 objReg.EnumKey strHive, strKeyPath, arrSubKeys
 For Each Subkey In arrSubKeys
  strValPath = strKeyPath & "\" & Subkey
  objReg.EnumValues strHive, strValPath, arrValueNames, arrValueTypes
  If VarType(arrValueNames) = 8204 Then
   If Not UBound(arrValueNames) = 0 Then
    For i=0 To UBound(arrValueNames)
     If arrValueNames(i) = strVal Then
      objReg.getStringValue strHive, strValPath, arrValueNames(i), value
      If Not InStr(value, strSearch) = 0 Then
       Select Case GuidExcludes(value)
        Case True
         ' DO NOTHING
        Case False
         SearchInstalls = True
         objReg.getStringValue strHive, strValPath, "DisplayVersion", strVersion
       End Select
      End If
     End If
    Next
   End If
  End If
 Next
End Function
```
