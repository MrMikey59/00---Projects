# Excel Event Processing

## Activate
```vb
Private Sub Worksheet_Activate()
' These Commands are executed every time the
' worksheet is activated.
  <VBCommands>
End Sub
```

## Change
```vb
Private Sub Worksheet_Change(ByVal Target As Excel.Range)
' This is a simple sub that changes what you type in a cell to upper case.
  Application.EnableEvents = False
    Target = UCase(Target)
  Application.EnableEvents = True
End Sub
```

## Selection  
```vb
Private Sub Worksheet_Change(ByVal Target As Excel.Range)
' Executes for every change made within the
' worksheet
  <VBCommands>
End Sub
```

## SelectionChange
```vb
Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)
' Execute every time a cell is selected.
  <VBCommands>
End Sub
```

#### Color Change Tools  
The Range: ![The Range](https://github.com/MrMikey59/00---Projects/blob/master/MS%20Office%20Suite/Excel/xlRange%2001.png)  
```vb
Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)
  Me.Cells(8, 3).Interior.Color = RGB(Me.Cells(3, 1), Me.Cells(3, 2), Me.Cells(3, 3))
' Show Individual Component Based Colors
  Me.Cells(1, 1).Interior.Color = RGB(Me.Cells(3, 1), 0, 0)
  Me.Cells(1, 2).Interior.Color = RGB(0, Me.Cells(3, 2), 0)
  Me.Cells(1, 3).Interior.Color = RGB(0, 0, Me.Cells(3, 3))
End Sub
```

#### Flip a Cells Value Between O to X
```vb
Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)
  If ActiveCell = "O" Then
    ActiveCell = "X"
  Else
    ActiveCell = "O"
  End If 
  Me.Cells(1, 1).Select  ' Move to a Hold Position
End Sub
```

