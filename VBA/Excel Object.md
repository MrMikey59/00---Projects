# Excel Object

## Common Locations 
Everything starts here, but some instances these may be omitted!
| Location |  Description |  
| ---- |  ---- |   
| ActiveCell | Predefined by App as the cell in focus. |  
| ActiveRange | Predefined by App as the range in focus. |  
| ActiveWorksheet | Predefined by App as the Worksheet which has a cell/range with focus. |  
| ActiveWorkBook | Predefined by App as the Workbook in which has a cell/range with focus. |  
| Me |  Worksheet the code module is inserted into.  |   
| Selection | Predefined by App as the Selection in focus. | 
| This |  TBD |   

## Common Methods
| Method | Script | Description |  
| ---- | ---- | ---- |  
| activate | ```<LocationName>.Activate``` | Go to <Location>. Moves focus to the location, which can be a range or cell. |  
| borderAround  | ```BorderAround ColorIndex:=<Index>, Weight:={ xlThick \| xlThin }``` | Sets the border style for a range or cell. |  
| Cells() | ```Me.Cells(1, 1).Activate```  | A Range of Cells or Cell | 
| font | ```<Location>.Font.Bold = { True \| False }``` <br> ```<Location>.Font.Color``` | Set the font style & color for a range or cell. |  
| interior | ```<Location>.Interior.Color``` <br> ```<Location>.Interior.ColorIndex = <Index>``` | Sets the background color for a range or cell. |  

## Common Properties
| Property | Script | Description |  
| ---- | ---- | ---- |   
| hidden | ```<Location>.Hidden = { True \| False }``` | Makes the <Location> Visible or Hidden. |  

