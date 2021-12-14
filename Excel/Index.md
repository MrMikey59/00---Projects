# Excel

This folder contains notes, snippets and examples related to Excel.

![Excel Object Heirarchy Chart](https://github.com/MrMikey59/00---Projects/blob/master/Excel/Excel%20Object%20Chart.jpg)

The image above illustrates only a very small portion of Excel’s VBA object hierarchy.  
Common Object Collections

-	Workbooks, which is a collection of all [the Excel workbooks that are currently open](https://powerspreadsheets.com/vba-open-workbook/).  
-	Worksheets, the collection of all the Excel worksheets within a particular Workbook.  
-	Charts, which groups all chart sheets that are inside a particular Workbook.  
-	Sheets, which is a collection of all the sheets within a particular Workbook. In this case, it doesn’t matter the type of sheet. Therefore, this collection includes both worksheets and charts sheets.  

### Common Object Calls:
`Application.Workbook.Worksheet.<Object|Property|Method>[...]`  
Assumes the Application, ActiveWorkbook, or AcitiveWorksheet if omitted from a call..

