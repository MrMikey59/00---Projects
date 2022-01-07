# Database Forms

## Log On
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

## Main Menu

Load
```vbscript
Private Sub Form_Load()
  Me!lblDate.Caption = Format(Now, "dddd, mmm d yyyy")
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

