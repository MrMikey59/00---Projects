# Excel Cell, Range or Selection Object

This object provides access to all workbooks within the open application. 

## Common Constants, Declaration & Variables
| CDV Name | Description | 
| --- | --- |
| ColLetter | `ColLetter = CHR(64 + <ColNum>)` |
| Final Row | `FinalRow = Cells(Rows.Count, 1).End(xlUp).Row` |

## Properties
| Property | Description |
| ---- | ---- | 
| FormulaR1C1 | `ActiveCell.FormulaR1C1 = "Total"` <br> `Selection.FormulaR1C1 = "=SUM(R[-9]C:R[-1] C)"` | 
| height | height of the object | 
| Interior | `ActiveCell.Interior.ColorIndex = 6` |

## Methods
| Method | Description |
| ---- | ---- |
| Autofill | `Selection.AutoFill Destination:=Range("E11:G11"), Type:=xlFillDefault` |
| Columns() | |
| Rows() | | 
| Select | Select the designated cell/range <br> `Range(<RangeIndex>).Select` <BR> Select from current selection to end of column: <br> `Selection.End(xlDown).Select` |

## Examples

#### Check Values in a known Range 

###### Left ot Right, then Top to Bottom
```vb
Sub CheckValues1()
' This sub checks values in a range 10 rows by 5 columns
' moving left to right, top to bottom-----
  Dim rwIndex As Integer
  Dim colIndex As Integer
  For rwIndex = 1 To 10
    For colIndex = 1 To 5
      If Cells(rwIndex, colIndex).Value <> 0 Then _
        Cells(rwIndex, colIndex).Value = 0
    Next colIndex
  Next rwIndex
End Sub
```

###### Top to Bottom, then Left ot Right
```vb
Sub CheckValues2()
' Same as CheckValues1 except moving top to bottom, left to right-----
Dim colIndex As Integer
Dim rwIndex As Integer
    For colIndex = 1 To 5
            For rwIndex = 1 To 10
                If Cells(rwIndex, colIndex).Value <> 0 Then _
                    Cells(rwIndex, colIndex).Value = 0
            Next rwIndex
    Next colIndex
End Sub
```

#### Select First to Last in a Row  
This assumes a maximum of 256 columns & that there is only one contiguous table in the row.  
```vba
Sub SelectFirstToLastInRow()
  Set LeftCell = Cells(ActiveCell.Row, 1)
  Set RightCell = Cells(ActiveCell.Row, 256)
  If IsEmpty(LeftCell) Then Set LeftCell = LeftCell.End(xlToRight)
  If IsEmpty(RightCell) Then Set RightCell = RightCell.End(xlToLeft)
  If LeftCell.Column = 256 And RightCell.Column = 1 Then ActiveCell.Select Else Range(LeftCell, RightCell).Select
End Sub
```

#### Select First to Last in a Column  
This assumes a maximum of 16384 rows & that there is only one contiguous table in the row.  
```vba
Sub SelectFirstToLastInColumn()
  Set TopCell = Cells(1, ActiveCell.Column)
  Set BottomCell = Cells(16384, ActiveCell.Column)
  If IsEmpty(TopCell) Then Set TopCell = TopCell.End(xlDown)
  If IsEmpty(BottomCell) Then Set BottomCell = BottomCell.End(xlUp)
  If TopCell.Row = 16384 And BottomCell.Row = 1 Then ActiveCell.Select Else Range(TopCell, BottomCell).Select
End Sub
```

