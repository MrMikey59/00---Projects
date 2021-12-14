# String Object

#### String Size Control
To force a string to be fixed at 50 characters in length, use this :
```vbscript
Dim temp as String * 50
```
**NOTE:** 
- If your string is less than 50, it is padded with spaces. 
- If it is greater than 50 characters, the excess characters are truncated and lost.

## Common String Characters

| Description | Example Code |  
| ---- | ---- |  
| Backslash | `var BACKSLASH = "\\";` |  
| Backspace | `var BACKSPACE = "\b";` |  
| Carraige Return and Line feed  (Windows) | `var CRLF = '\r\n';` |    
| Carraige Return  | `var CR = '\r';` |    
| Colors | `Const Red = RGB(255, 0, 0)` <br> `Const Green = RGB(0, 255, 0)` <br> `Const Blue = RGB(0, 0, 255)` <br> `Const White = RGB(255, 255, 255)` <br> `Const Black = RGB(0, 0, 0)` <br> `Const Yellow = RGB(255, 255, 0)` <br> `Const Purple = RGB(255, 0, 255)` |  
| Form Feed | `var FF = "\f";` |  
| Line Feed | `var LF = "\n";` |  
| Quotes | `Const dblQuote = """"` <br> `Const sngQuote = ''''` <br> `var SQUOTE = "\'";` <br> `var DQUOTE = '\"';` |  
| Tab | `var TAB = "\t";` |  


## Some UDF String Functions
| Function | Example Code | 
| ---- | ---- | 
| Double Quote a String | ``Function DblQuote(Str)`` <br> `` DblQuote = Chr(34) & Str & Chr(34)`` <br> ``End Function `` | 
| Single Quote a String | ``function AddQuotes( str ){`` <br> `` return '"' + str.replace( /\"/g, "&quot;" ) + '"';`` <br> ``}`` | 
| Is Alphabetic | ``function isAlpha(ch){`` <br> ``// returns true if ch is a letter`` <br> `` if ( (ch < "a" \|\| "z" < ch) && (ch < "A" \|\| "Z" < ch) )`` <br> `` return false;`` <br> `` else`` <br> ``return true;`` <br> ``}`` | 
| Is Alpha-Numeric | ``function isAlphaNumeric(i) {`` <br> `` return ((i >= '0' && i <= '9') || (i >= 'a' && i <= 'z') || (i >= 'A' && i <= 'Z'));`` <br> ``}`` | 
| Is Alpha-Numeric (Special) | ``function isAlphaNumericSpecial(i) { `` <br> `` return ((i >= '0' && i <= '9') \|\| (i >= 'a' && i <= 'z') \|\| (i >= 'A' && i <= 'Z') \|\| (i == '!') `` <br> `` \|\| (i == '?') \|\| (i == '.') \|\| (i == ' ') \|\| (i == '"') \|\| (i == '\'') \|\| (i == '-'));`` <br> ``}`` | 
| Is Empty | ``function isEmpty(s){`` <br> `` return ((s == null) \|\| (s.length == 0))`` <br> ``}`` | 
| Is a Letter | ``function isLetter(i){ `` <br> `` return ((i >= 'a' && i <= 'z') \|\| (i >= 'A' && i <= 'Z'));`` <br> ``}`` | 
| Is a Phone Number <br> Requires: <br> isEmpty <br> isInteger <br> numAllowed | ``function isPhoneNum (s){`` <br> `` if (isEmpty(s)) `` <br> `` if (isPhoneNum.arguments.length == 1) return false;`` <br> `` else return (isPhoneNum.arguments[1] == true);`` <br> `` return (isInteger(s) && s.length == numAllowed)`` <br> ``}`` |


#### Reverse a String
```vbscript
Function ReverseString(strText As String) As String
 Dim intLength As Integer, i As Integer, _
   strReversedText as String
 strReversedText = ""
 intLength = Len(strText)
 For i = 0 To intLength – 1
  strReversedText = strReversedText & Mid(text, (intLength - i), 1)
 Next i
 ReverseString = strReversedText
End Function
```

#### Unsplit a String
```vbscript
Sub UnsplitNames()
' This routine assumes the string is a name and 
' that it is in “Last, First” name order. Everything 
' after the comma becomes the First Name.
 Dim strFullName As String, _
   intCommaPosition As Integer, i As Integer
 For i = 2 To 7
  strFullName = Cells(i, 1).Value
  intCommaPosition = InStr(strFullName, ",") 
  Cells(i, 2).Value = Mid(strFullName, intCommaPosition + 2)
  Cells(i, 3).Value = Left(strFullName, intCommaPosition - 1)
 Next i
End Sub
```

