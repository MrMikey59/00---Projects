# MS OFfice Word Object

- [Word Object](https://docs.microsoft.com/en-us/visualstudio/vsto/word-object-model-overview?view=vs-2019)  
![Word Object](00pics\WordObject.png)
#### 
To explore Application object event sequences  
Using the code from the procedure you just completed, you can step through some actions in Word to see exactly what triggers these events.   
1.	Run the RegisterEventHandler procedure. 
2.	Open an existing document, create a new document, or switch from one document to another to trigger the DocumentChange event. 
3.	Quit Word to trigger the Quit event. 

## Adding Code to and Triggering Application Object Events
In this section, you'll learn how to program the events associated with the Application object, and then you'll carry out the specific actions in Word that cause these events to occur. For more information, search the Microsoft Word Visual Basic Help index for events.  
To add code to Application object events  
In the following procedure, you'll create a class module and declare an object variable to respond to events triggered by the Application object in Word. Then you'll create event procedures for the Application object's two events  
**Note** Using the WithEvents keyword in the declaration specifies that the object variable will be used to handle the object's events  
1.	In Word, point to Macro on the Tools menu, and then click Visual Basic Editor. 
2.	On the Insert menu in the Visual Basic Editor, click Class Module to add a new class module to the project. 
3.	In the Properties pane, change the Name property of the class module to EventsModule. 
4.	Add the following declaration to the class module:  
```vbscript
Option Explicit
' The WithEvents keyword specifies that WdApp
' will provide events.
Public WithEvents WdApp As Word.Application
```
5.	In the Object dialog box, click WdApp; in the Procedure dialog box, click each event to insert procedure templates into the Code window.   
6.	Type or paste these statements to the procedures to create the following subroutines.  
7.	In the Project Explorer, double-click ThisDocument, and then add the following declaration and procedure:   
```vbscript
Option Explicit
' Sets a reference to your class module.
Dim X As New EventsModule
Public Sub RegisterEventHandler()
' This code connects your class module and its events
' to the Word Application object.
  Set X.WdApp = Word.Application
End Sub
```
8.	On the File menu, click Save.   

## Word Application Object
```vbscript
Dim objWord As Object
Set objWord = GetObject(, "Word.Application")
  objWord.Visible = True
  objWord.Documents.Open "C:\My Documents\Temp.doc"
Set objWord = Nothing
' Alternate: 
Dim objWord As Word.Application
Set objWord = New Word.Application
Set objWord = Nothing
```

## Word Document Object
```vbscript
Dim objWDoc As Word.Document
'Create a new document
  Set objWDoc = objWord.Documents.Add 
  objWDoc.Save
  objWDoc.Close
Set objWDoc = nothing
```

## Word Range Object
```vbscript
Dim objRng as Word.Range 
Set objRng = ActiveDocument.Range
  objRng.Delete 
  objRng.Move Unit:=wdStory, Count:=-1
  objRng.Select
Set objRng = Nothing
```

## Word Table Object
```vbscript
Dim objWTab As Word.Table
  Set objWTab = objWDoc.Tables.Add(Range:=Selection.Range,_
  objWTab.Cell(1, 1).Select 
  Selection.TypeText ("Hello World")
```

# Examples

### Get the Help Document (Word)
Requires:  objWord
```vbscript
Private Sub cmdHelp_Click()
' The short version of opening a word instance
' with a document.
  Dim strWordDoc As String
  strWordDoc = <FilePathName>
  objWord.Visible = True
  objWord.Documents.Open FileName:= strWordDoc
End Sub
```

### Open Word Application
Requires: objWord & objDoc
```vbscript
Sub Open_MSWord()
' You should create a reference to the Word Object Library in the VBEditor
On Error GoTo errorHandler
Dim mywdRange As Word.Range
With objWord
    .Visible = True
    .WindowState = wdWindowStateMaximize
End With
Set mywdRange = objDoc.Words(1)
With mywdRange
    .Text = Range("F6") & " This text is being used to test subroutine." & _
        "  More meaningful text to follow."
    .Font.Name = "Comic Sans MS"
    .Font.Size = 12
    .Font.ColorIndex = wdGreen
    .Bold = True
End With
errorHandler:
Set mywdRange = Nothing
End Sub
```

