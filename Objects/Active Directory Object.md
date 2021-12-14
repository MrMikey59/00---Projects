# Active Directory Object

## Common Constants & Variables
| CV Name | Description |
| --- | --- |
| objSysInf | `Dim objSysInfo` <br> `Set objSysInfo = CreateObject("ADSystemInfo")` |
| Domain Object | `Dim objDomain` <br> `Set objDomain = GetObject("LDAP://rootDse")` <br> `Set objDomain = Nothing` |
| DC Object | `Dim objDC` <br> `Set objDC = objDomain.Get("dnsHostName")` <br> `Set objDC = Nothing` |


## Example Code

#### Get Domain  
Requires:  
- objWMIService

```vbscript
Function GetDomain()
  GetDomain = Empty
  Dim colItems
  Set colItems = objWMIService.ExecQuery("Select Domain from Win32_ComputerSystem",,16)
  If colItems.count = 1 Then 
    GetDomain = colItems.ItemIndex(0).Domain
  Edn If
Set colItems = Nothing
End Function
```
