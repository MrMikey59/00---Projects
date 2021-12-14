# Excel Workbook Object

This object provides access to all workbooks within the open application. 

## Common Constants, Declaration & Variables

## Properties
| Property | Description |
| ---- | ---- | 
| ActiveCell | active cell of a window/workbook/application |
| ActiveChart | active chart of a window/workbook/application |
| ActiveDialog | active form of a window/workbook/application <br> `for each sh in Thisworkbook.dialogSheets` <br> `sh.visible = xlSheetVisible` <br> `Next` |
| ActiveSheet | active sheet of a window/workbook/application |
| ActiveWindow | active Window of a window/workbook/application |
| ActiveWorkbook | the currently active/selected workbook | 
| FullName | | 
| Path | |
| ThisWorkbook | workbook in which the code is located | 

## Methods
| Method | Description |
| ---- | ---- | 
| close | Close the current Workbook <br> `ThisWorkbook.Close False` |
| Charts | access only to chart sheets |
| DialogSheets | http://j-walk.com/ss/excel/files/dlgwiz.htm <br> access only to form sheets |
| Exce14IntlMacroSheets | access to international macro sheets |
| Exce14MacroSheets | access only to Excel 4 macro sheets |
| Hide | hide forms, sheets, rows or columns | 
| SaveAs | `.SaveAs Filename:=<Name>, FileFormat:=xlTemplate` |
| Modules | access only to module sheets |
| Sheets | access to all sheets of a workbook |
| Show | show forms, sheets, rows or columns |
| UserForms  | [Excel VBA Course Notes 4 User Forms](http://www.fontstuff.com/downloads/Excel%20VBA%20Course%20Notes%204%20-%20User%20Forms.pdf) |
| Worksheets() | the Worksheet object list |

