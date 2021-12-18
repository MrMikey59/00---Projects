# String Object

## String Properties
| Property | Description |  
| --- | --- |  
| length | number of characters assigned to string | 

## String Methods
| Methods | Description |  
| --- | --- |  
| escape() | Encodes a string using URL encoding |  
| indexOf() | A method of the string object that returns the index of the next occurrence of a substring in a string |  
| split() | Separates a string into compnents by delimiter into an array |
| substring() | Returns a portion of the string based on being passed the indexes of the first and last character as arguments |  
| unescape() | Decodes a string encoded using URL encoding |  


## Template Strings (ES6)
Template String replacement elements are indicated by the Dollar sign and curly braces with a normal string that is contained in apostrophe (AKA backtick) delimiters.
```javascript
  ${expression}
```
For example:
```javascript
  var js = "JavaScript";
  var des = `Template strings can now be used in ${js} with lot of additional features.`;
```
Outputs:
```console
  Template strings can now be used in Java Script with lot of additional features.
```
These Template Strings can include multiple lines and hve no inlcuded template elements.
```javascript
  var str = `This is my template string...
  and is working across lines`;
```

#### Using XML as a Template delimiter:
```javascript
  var xml = <XML>
      Here 
      is 
      some 
      multiline 
      text!
  </XML>
```

#### Add a Format prototype function to String
```javascript
  // Add a Format prototype function to String
  // First, checks if it isn't implemented yet.
  if (!String.prototype.format) {
    String.prototype.format = function() {
      var args = arguments;
      return this.replace(/{(\d+)}/g, function(match, number) { 
        return typeof args[number] != 'undefined'
          ? args[number]
          : match
        ;
      });
    };
  }
```
**Example call**
```javascript
  "{0} is dead, but {1} is alive! {0} {2}".format("ASP", "ASP.NET")
```
Outputs: 
```console
  ASP is dead, but ASP.NET is alive! ASP {2}
```
Note the {2} element wasn't provided in the call, so it defaultrs as a plain string value.

## Compare String
```javascript
  function isEqual(str1, str2, ignoreCase) {
    return ignoreCase ? str1.toLowerCase() == str2.toLowerCase() : str1 == str2;
  }
```

## Examples 

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

