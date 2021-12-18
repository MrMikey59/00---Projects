# Window Object

## Constants Declarations and Variables
| CDV Name | Description |
| ---| --- | 
| WinHeight | `var WinHeight = 300` |
| WinSettings | `WinSettings = ('resizable=no, scrollbars=no, width=550, height=158, toolbar=no')` | 
| WinWidth | `var WinWidth = 400` | 

## Properties
| Property | Description | Example | 
| ---- | ---- | ---- | 
| Caption | ---- | `Caption = <CaptionString>  ' Display with title` | 
| defaultView   | --- | 
| dialogArguments  | --- | 
| event   | --- | 
| frameElement   | --- | 
| Height | ---- | `Height = <Size>` | 
| navigator   | --- | 
| ownerDocument   | --- | 
| parentWindow   | --- |
| top   | --- | 
| Width | ---- | `Width = <Size>` | 
| WindowState | ---- | `WindowState = xlNormal` | 

## Methods
| Method | Description | Example | 
| ---- | ---- | ---- | 
| captureEvents() | direct events to your own processing | ---- | 
| moveTo() |  |  
| open() | Opens a URL in a named window or frame |
| releaseEvents() | release events to common processing | ---- | 
| resizeTo() |  |  

## Example Code

#### Center a Window
```vbscript
Sub CenterWindow(intWidth, intHeight)
 window.moveTo screen.availWidth\2 - intWidth\2, screen.availHeight\2 - intHeight\2
End Sub
```

#### Check if Window is Modal
```javascript
function checkModal() {
  var w = window.frameElement;
  if ((!w) || (w == null)) return false;
  w = w.ownerDocument;
  if ((!w) || (w == null)) return false;
  w = (typeof w.parentWindow == "undefined") ? w.defaultView : w.parentWindow;
  if ((!w) || (w == null)) return false;
  w = w.dialogArguments;
  if ((!w) || (w == null)) return false;
  return true;
}
```

#### Open a Popup Window
```javacript
'Pop-up Window Script
function popUp(pPage) {
  window.open(pPage,'popUp', WinSettings);
}
```

#### Relocate a Window
```vbscript
Sub RelocateWindow (winHorizontal, winVertical)
 window.moveTo winHorizontal, winVertical
End Sub
```

#### Resize a Window
```vbscript
Sub ResizeWindow (winWidth, winHeight)
 window.resizeTo winWidth, winHeight
End Sub
```

#### Resize an HTA Window
```vbscript
function ResizeWindow (w,h) {
// known bug in mshtml; try/catch fixes
  try     { window.resizeTo( w, h );} 
//  do it until it works
  catch(e){ ResizeWindow (w,h); }
}
```

## Set My Scrolling
```javascript
function setMyScrolling() {
  var o = window.top.document.getElementById(<IDName1>);
  var h = o.offsetHeight;
  var d = document.getElementById(<IDName2>);
  d.style.height = "" + h + "px";
  d.style.overflow = "auto";
}
setMyScrolling();
window.top.document.getElementById( <IDName1> ).onresize = setMyScrolling;
```

