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
| FormulaR1C1 | `ActiveCell.FormulaR1C1 = "Total"` | 
| height | height of the object | 
| Interior | `ActiveCell.Interior.ColorIndex = 6` |

## Methods
| Method | Description |
| ---- | ---- |
| Select | select the designated cell/range <br> `Range(<RangeIndex>).Select` | |
