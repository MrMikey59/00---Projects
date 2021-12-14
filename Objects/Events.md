# Events

#### Application Events
| Event | Description| 
| --- | --- | 
| DocumentChange | A new document is created, an existing document is opened, or a different document is made the active document. <br> `Private Sub <WordApp>_DocumentChange()` <br> `MsgBox "DocumentChange event"` <br> `End Sub` | 
| Quit | The user quits Application. <br> `Private Sub <WordApp>_Quit()` <br> `  MsgBox "Quit event"` <br> `End Sub`  | 

#### Document Events
| Event | Description| 
| --- | --- | 
| Open | A document or template is opened.  <br> `Private Sub <Document>_Open()` <br> `  MsgBox "Open event"` <br> `End Sub`  | 
| Close | A document or template is closed. <br> `Private Sub <Document>_Close()` <br> `  MsgBox "Close event"` <br> `End Sub` | 
| New | A new document based on a specified template is created.  <br> `Private Sub <Document>_New()` <br> `  MsgBox "New event"` <br> `End Sub` | 

#### Excel Events
 | Event|Description |
 | --- | --- | 
 | Workbook Open |will be executed by Excel VBA when you open the workbook. |
 | Worksheet Change |will be executed by Excel VBA when you change a cell on a worksheet. |
 | Worksheet BeforeDoubleClick |will be executed by Excel VBA when you double click a cell on a worksheet. |
 | Worksheet SelectionChange |occurs each time we change the Active Cell on a worksheet. |
 | Workbook BeforePrint |will be executed by Excel VBA before you print a workbook. |
 
## Before Update
Recording the Date and Time When a Record Is Modified in Access.  
When you use a form to edit records, you can date and time stamp a record by attaching a macro to the BeforeUpdate form property or by writing an event procedure for the BeforeUpdate form event.  
The following illustration shows a form for a table containing customer data. At the bottom of the form, you can see the date and time the record was last modified.  

![Custoemr Form Example](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/Customer%20Form%20Example.gif)

The date and time stamp is recorded when the user clicks a navigation button after editing the record. The values are stored in fields in the underlying table (for example, DateModified and TimeModified).  

1.	Add two date/time fields to the table for which you want to record date and time stamps. Name the fields DateModified and TimeModified. 
2.	Create a form based on the table and include the fields you want from the table, including the date and time fields. If a form already exists, add the date and time fields to the form. 
3.	Do one of the following: 

- Attach an event procedure to the BeforeUpdate form event
  1.	Open the Customer form in Design view. 
  2.	On the form property sheet, click the Event tab. 
  3.	Click the Before Update event, and then click the Build button. 
  4.	Double-click Code Builder to display the event procedure in the form module. 
  5.	Add code to the event procedure between the Sub and End Sub statements to record the date and time values in the underlying fields. 

- Sample BeforeUpdate event procedure for the Customer form

**Update Date, Time & User before update**  
Requires:

- strUserName 
```vbscript
Private Sub Form_BeforeUpdate(Cancel As Integer)
 On Error GoTo BeforeUpdate_Err
' Set bound controls to system date, time and user.
 DateModified = Date
 TimeModified = Time()
 UserModifying = strUserName
BeforeUpdate_End:
 Exit Sub
BeforeUpdate_Err:
 MsgBox Err.Description, vbCritical & vbOKOnly, _
  "Error Number " & Err.Number & " Occurred"
 Resume BeforeUpdate_End
End Sub
```

