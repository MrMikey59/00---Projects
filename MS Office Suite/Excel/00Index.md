# Excel

![Excel Logo 1](https://github.com/MrMikey59/00---Projects/blob/master/MS%20Office%20Suite/Excel/Pics/Excel%20Logo%201.png)
![Excel Logo 2](https://github.com/MrMikey59/00---Projects/blob/master/MS%20Office%20Suite/Excel/Pics/Excel%20Logo%202.png)  

This folder contains notes, snippets and examples related to Excel.  
- [The Excel Addict](http://www.theexceladdict.com/)
- Object Reference (2010): https://msdn.microsoft.com/en-us/library/office/ff194068(v=office.14).aspx 

![Excel Object Heirarchy Chart](https://github.com/MrMikey59/00---Projects/blob/master/Excel/Excel%20Object%20Chart.jpg)

The image above illustrates only a very small portion of Excel’s VBA object hierarchy.  

# Constants, Predefined 
| Constant | Type | Value | Description |  
| -- | -- | -- | -- |  
| xlOpenXMLWorkbookMacroEnabled | File Format | -- | -- |  

# Common Object Collections

-	Workbooks, which is a collection of all [the Excel workbooks that are currently open](https://powerspreadsheets.com/vba-open-workbook/).  
-	Worksheets, the collection of all the Excel worksheets within a particular Workbook.  
-	Charts, which groups all chart sheets that are inside a particular Workbook.  
-	Sheets, which is a collection of all the sheets within a particular Workbook. In this case, it doesn’t matter the type of sheet. Therefore, this collection includes both worksheets and charts sheets.  

### Common Object Calls:
`Application.Workbook.Worksheet.<Object|Property|Method>[...]`  
Assumes the Application, ActiveWorkbook, or AcitiveWorksheet if omitted from a call..

### Common VBA Routine with Error Trap
```vba
Sub <ProcessName>()
  On Error GoTo HandleError
  <VBACommands>
HandleError:
  <ProcessError>
[  GoTo Exit]
Exit:
End Sub
```

# Keyboard Shortcuts 
| Action | Shortcut |  
| -- | -- |  
| Select Entire Row |[SHIFT] + [SPACE] |  
| Quick Sum() a Column or Row|[Alt] + =  |  
| Display Formula (With Dependencies Highlighted)|[F2] <BR> Double Click Cell|  
| Display Screen Key Tips |[ALT] |  
| Display Home Ribbon Screen Key Tips |[ALT] + H |  
| Display Insert Ribbon Screen Key Tips |[ALT] + N |  
| Display Backstage (File) Screen Key Tips |[ALT] + F |  
| Display Screen Tips |[ALT] |  
| Quick Copy Top Row through Range (Data/Formula & Style)|[CTRL] + D |  
| Select Entire Column|[CTRL] + [SPACE] |  
| Open Context Menu|[SHIFT] + [F10] |

# Processes
| Action | Description |  
| -- | -- |  
| Convert Text Data to Columns|Data > Text to Columns |  
| Start Excel in Safe Mode|Hold CTRL key and click on Excel icon <br> In the Windows Start Menu’s Search Box, type Excel /s and enter. |  
| Set Number to minimum number of displayed digits|Select cell(s). Expand Number from the Home Ribbon (click arrow). Select Custom then add #,#00 in Type field for a minimum of two digit display with optional comma separation for larger numbers. <br> ![Process 01](https://github.com/MrMikey59/00---Projects/blob/master/MS%20Office%20Suite/Excel/Pics/Process%2001.png) |  

### Set Default Font
1.	Open the "Options" dialog box. Click on Office icon, then click on “Excel Options” button at bottom of menu. This opens the Options dialog box in which you can change the default attributes of your workbook.
2.	Change the default font. Click the "Popular" tab and then “when Creating New Workbooks” section, select font and font size desired. Note: This only applies to newly created spreadsheets, and a restart of Excel is required to affect these changes.

# Script Examples
  
### Create a File Based on Spreadsheet Information
```vbscript
Sub SaveCustFile()  
  Dim strWkbkName As String  
  strWkbkName  = ActiveWorkbook.Sheets("Sheetl").Cells(2,3).Value & " "  
  strWkbkName = strWkbkName  & ActiveWorkbook.Sheets("Sheetl").Cells(2,4).Value  
  ActiveWorkbook.SaveAs  Environ$("UserProfile") & "\Documents\" & strWkbkName  
  FileFormat := xlOpenXMLWorkbookMacroEnabled  
End Sub
```
