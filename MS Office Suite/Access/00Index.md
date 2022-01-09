# Access 

This contains notes, snippets & examples

Access calls:

- a column a *Field*
- a row a *Record*
- a database a *Record Set*.

## Application Examples

#### Quit the Application
```vbscript
This procedure is to be used only on the main form (switchboard)
Private Sub cmdQuitApp_Click()
On Error GoTo Err_cmdQuitApp_Click
' Close Access and all Databases.
  DoCmd.Quit
Exit_cmdQuitApp_Click:
  Exit Sub
Err_cmdQuitApp_Click:
  MsgBox Err.Description
  Resume Exit_cmdQuitApp_Click
End Sub
```

#### Testing Objects
```vbscript
Sub WishVBAHadOverloads(ByVal Obj As Object)
  If TypeOf Obj Is TableDef Then 
    Dim Def As TableDef
    Set Def = Obj
    ' work with Def... 
    Exit Sub
  End If
  If TypeOf Obj Is Form Then 
    Dim Frm As Form
    Set Frm = Obj
    ' work with Frm... 
    Exit Sub
  End If
  Err.Raise 999, "WishVBAHadOverloads", "Bad argument type - expected a TableDef or Form"
End Sub 
```
