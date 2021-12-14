# Events

## Application Events
| Event | Description| 
| --- | --- | 
| DocumentChange | A new document is created, an existing document is opened, or a different document is made the active document. <br> `Private Sub <WordApp>_DocumentChange()` <br> `MsgBox "DocumentChange event"` <br> `End Sub` | 
| Quit | The user quits Application. <br> `Private Sub <WordApp>_Quit()` <br> `  MsgBox "Quit event"` <br> `End Sub`  | 

## Document Events
| Event | Description| 
| --- | --- | 
| Open | A document or template is opened.  <br> `Private Sub <Document>_Open()` <br> `  MsgBox "Open event"` <br> `End Sub`  | 
| Close | A document or template is closed. <br> `Private Sub <Document>_Close()` <br> `  MsgBox "Close event"` <br> `End Sub` | 
| New | A new document based on a specified template is created.  <br> `Private Sub <Document>_New()` <br> `  MsgBox "New event"` <br> `End Sub` | 

## Excel Events
 | Event|Description |
 | --- | --- | 
 | Workbook Open |will be executed by Excel VBA when you open the workbook. |
 | Worksheet Change |will be executed by Excel VBA when you change a cell on a worksheet. |
 | Worksheet BeforeDoubleClick |will be executed by Excel VBA when you double click a cell on a worksheet. |
 | Worksheet SelectionChange |occurs each time we change the Active Cell on a worksheet. |
 | Workbook BeforePrint |will be executed by Excel VBA before you print a workbook. |
 
 
