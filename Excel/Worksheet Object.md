# Excel Worksheet Object

This object provides access to a worksheet within the current Workbook. 

## Common Constants, Declaration & Variables
| CDV Name | Description |
| ---- | ---- | 
| Worksheet | `Set objWorksheet = Worksheets.Add(Before:=Worksheets(1))` |

## Properties

| Property | Description |
| ---- | ---- | 
| SelectedSheets | access to groups of sheets (with multiple selection) |
| Visible | Hide/Unhide  a Worksheet <br> `Worksheets(<WorksheetName>).Visible = { False \| True \| xlHidden \| xlVeryHidden }` |

## Methods
| Method | Description |
| ---- | ---- | 
| activate | Activate (Go to) a Worksheet <br> `Worksheets(<WorksheetName>).Activate` |
| add | Add a new worksheet <br> `.add [Before:=Worksheets(<Index>)` |
| Cells | Access the cells object list |
| Columns | Access the Columns object list|
| Rows | Access the Rows object list |
| Shapes | Access the Shapes object list |

