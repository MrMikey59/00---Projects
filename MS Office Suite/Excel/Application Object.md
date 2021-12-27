# Excel Application Object

This object provides access to the application within the open window. 

## Common Constants, Declaration & Variables
| CDV Name | Description |  
| --- | --- |  
| Save_Filter | `Const Save_Filter = "Templates,*.xlt" ` | 
| Save_Title | `Const Save_Title = "Save Template"` | 
| objXL | |

## Properties

| Property | Description |
| ---- | ---- |  
| StatusBar | returns/displays status | 

## Methods
| Method | Description |
| ---- | ---- | 
| Calculate | Cause the spreadsheet to recalulate (same as F9) |
| Workbooks() | the Workbooks object list |


## Examples

#### Hold Events While Processing

Use these to pause and then restore event processing:
```vb
Application.EnableEvents = False ' at the start of your code
Application.EnableEvents = True  ' at the end of your code
```