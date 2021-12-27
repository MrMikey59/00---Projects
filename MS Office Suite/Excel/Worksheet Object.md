# Excel Worksheet Object

This object provides access to a worksheet within the current Workbook. 

**Referencing**: Worksheets( [ \<WSName> \| \<WSIndex> ] )

#### Declaration
```vbscript
Dim objWSheet As Worksheet
Set objWSheet = ActiveSheet
Set objWSheet = Nothing
```

## Common Constants, Declaration & Variables
| CDV Name | Description |
| ---- | ---- | 
| objWorksheet | `Set objWorksheet = Worksheets.Add(Before:=Worksheets(1))` |

## Properties

| Property | Description |
| ---- | ---- | 
| SelectedSheets | access to groups of sheets (with multiple selection) |
| Shapes() |  |  
| Visible | Hide/Unhide  a Worksheet <br> `Worksheets(<WorksheetName>).Visible = { False \| True \| xlHidden \| xlVeryHidden }` |

## Methods
| Method | Description |
| ---- | ---- | 
| activate | Activate (Go to) a Worksheet <br> `Worksheets(<WorksheetName>).Activate` |
| add | Add a new worksheet <br> `.add [Before:=Worksheets(<Index>)` |
| Cells | Access the cells object list |
| Columns | Access the Columns object list <br> `Columns.Autofit` |
| Protect |  |  
| Rows | Access the Rows object list |
| Shapes | Access the Shapes object list <br> `Shapes.AddShape 1, 10, 20, 100, 200` |
| Unprotect |  |  

## Examples

