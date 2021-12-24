# Example Scripts

### Get data from an Excel File
Requires:

- objXL - the Application
- strCurDir - the Current Directory 

```vba
Sub readCell()
  dim objXLWb, excelVal
  set objXLWb = objXL.Workbooks.Open(strCurDir & <FileName>)
  excelVal = objXLWb.Worksheets(1).Range("A1").Value
  objXLWb.Close
  MsgBox excelVal
End Sub 
```
