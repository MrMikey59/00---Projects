# Excel Workbook Object

This object provides access to all workbooks within the open application. 

## Common Constants, Declaration & Variables

## Properties
| Property | Description |
| ---- | ---- | 
| ActiveWorkbook | the currently active/selected workbook | 
| FullName | | 
| Path | |
| ThisWorkbook | workbook in which the code is located | 

## Methods
| Method | Description |
| ---- | ---- | 
| close | Close the current Workbook <br> `ThisWorkbook.Close False` | 
| saveas | `.SaveAs Filename:=<Name>, FileFormat:=xlTemplate` |
| Worksheets() | the Worksheet object list |

