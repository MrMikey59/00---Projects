# Constants and Variables

#### Python Identifiers (Names)

* The first character of the identifier must be a letter of the alphabet (upper or lowercase) or an underscore ('_').
* The rest of the identifier name can consist of letters (upper or lowercase), underscores ('_') or digits (0-9).
* Identifier names are case-sensitive.
* Use a double underscore to start a PRIVATE variable name.
* Use a single underscore to start a semi-private variable name.

#### Declare Constant
VBScript:  
```vbscript
{Public | Private | Dim } <varName> [As <Type>]
```

#### Declare Variables
VBScript:  
```vbscript
Const <Name> [As <Type> ]= <Value>
```

## Some Common Constants
| Type | Examples |
| --- | --- |  
| Special Characters | `Const conDblQuote = """"` |
| File System Operations | `Const ForReading = 1` <BR> `Const ForAppending = 8` <BR> `Const OverwriteExisting = True` <BR> `Const DeleteReadOnly = True` |  
| Numbers | `Const conPi as Double = 3.14159265` |
| Registry | `Const HKEY_LOCAL_MACHINE = &H80000002` | 

## Common Variables
| Type | Examples |
| --- | --- |  
| Date Time | `Dim dtScriptLaunch ` <br> `dtScriptLaunch = Now() ' Tracks date/time of script start` | 
| File System | `Dim strCurDir ‘ <BR> `strCurDir = objShell.CurrentDirectory` | 
| WMI Services | `strImpersonate = "{impersonationLevel=impersonate}"` <BR> `strImpersonate = ""  ' No impersonation used` <br> `strComputer = "."` <BR> `strComputer = objNetwork.ComputerName` | 
  
  
