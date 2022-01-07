# Database Forms

### Conventions I Use
1. Any form ending with “View” is used for entry/editing of Table information. View forms are used to display a single record for editing or a blank record adding.   
    - To enter a new record, the “Enter” key must be used to finish the record and clear the form. When editing, the only record available is the currently selected record and closing the form updates the information. In the AfterChange Events of the View form, be sure to set the requery for the combobox (cmbXxxx) to reset the select list after adding/editing the record. (for example: Forms!frmMainMenu!cmbAcronymSelect.Requery)  
    - The Cycle property for these view forms should also be set to “Current Record” to prevent tabbing through other records.

## Log On Form
Continue Button
Requires:
-  tblUsers
-  frmSplashScreen
Globals:
- lngUserID 
- intLogonAttempts
```vbscript
Private Sub cmdContinue_Click()
' Check to see if data is entered into the password box
  If IsNull(Me.txtPassword) Or Me.txtPassword = "" Then
    MsgBox "You must enter a Password.", vbOKOnly, "Required Data"
    Me.txtPassword.SetFocus
    Exit Sub
  End If
' Check value of password in tblEmployees to see if this
' matches value chosen in combo box
  If Me.txtPassword.Value = DLookup("Password", _
            "tblUsers", _
            "[UserID]=" & Me.lstUsers.Value) Then
    lngUserID = Me.lstUsers.Value
'Close logon form and open splash screen
    DoCmd.Close acForm, "frmLogon", acSaveNo
    DoCmd.OpenForm "frmSplashScreen"
  Else
    MsgBox "Password Invalid. Please Try Again", _
             vbOKOnly, "Invalid Entry!"
    Me.txtPassword.SetFocus
  End If
' If User Enters incorrect password 3 times database 
' will shutdown
  intLogonAttempts = intLogonAttempts + 1
  If intLogonAttempts > 3 Then
    MsgBox "You do not have access to this database." _
           & " Please contact an Admin.", _
           vbCritical, "Restricted Access!"
'    Application.Quit MsgBox "You ‘Exited’ the App!"
  End If
End Sub
```

Quit Button
```vbscript
Private Sub btnQuit_Click()
  Application.Quit
End Sub
```

Form Load
```vbscript
Private Sub Form_Load()
  intLogonAttempts = 1  ' Set up logon attempts counter
End Sub
```

Shift Focus After User Name is Selected
```vbscript
Private Sub lstUsers_AfterUpdate()
' Shift focus to Password Text Box on selection
  Me.txtPassword.SetFocus
End Sub
```

## Main Menu Form

Load
```vbscript
Private Sub Form_Load()
  Me!lblDate.Caption = Format(Now, "dddd, mmm d yyyy")
' This defines the location of the database within the system and 
' sets the ComboBox to location
' strDirLoc is a Public variable; cboLocation is a ComboBox on 
' frmMainMenu
  strDirLoc = GetBaseDirectory("EB TR32") ' uses global variable & function
  cboLocation = DLookup("WorkPlace", "lkpDirectory", "BaseDirectory = '" & strDirLoc & "'")
' MsgBox strDirLoc
  Dim strUserName As String
  GetUserName
  txtWelcomeUser = "Welcome, " & strUserName & "!"
End Sub
```

Quit Button
```vbscript
Private Sub btnQuit_Click()
  Application.Quit
End Sub
```

Timer
```vbscript
Private Sub Form_Timer()
  Me!lblClock.Value = Format(Now, "hh:mm:ss AMPM")
End Sub
```

Toggle Time on/off
```vbscript
Private Sub lblClock_DblClick(Cancel As Integer)
' Toggle Clock on or off
  If Me.TimerInterval = 1000 Then
    Me.TimerInterval = 0
  Else
    Me.TimerInterval = 1000
  End If
End Sub
```

