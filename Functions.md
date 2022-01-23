# Functions (Built In)
JS - JavaScript  
Py - Python
VB - VBScript
WD - Web Design (HTML, CSS, etc.)

| Function | Description | JS | Py | VB | WD |  
| --- | --- | :---: | :---: | :---: | :--: |   
| alert() | Displays a message in a dialog box. | Y |  | |  |   
| AND() |  |  | | XL |  |  
| AVERAGE() | | | | XL |  |  
| blur() | Emulates removing focus from an element (password, text, text area) | Y |  |  |  |  
| CHAR() |Returns the character with the ASCII number provided in the argument   | | | XL |  |  
| click() | Emulates clicking on a form element (button, checkbox, radio button, reset, selection list, submit) | Y |  |  |  |  
| CONCATENATE() |Combines the characters in selected cells into a string | | | XL |  |  
| confirm() | Displays a message in a dialog box with OK and Cancel buttons. | Y |  |  |  |  
| COUNT()| | |   | XL |  |  
| COUNTNUMS()| | |  | XL |  |  
| DATEDIF() | to calculate elapsed calendar time <BR> `=DATEDIF(<StartDate,<EndDate>,<CalendarUnitOption)` <BR> **Years**. In the expression `DATEDIF(A2,B2,"Y")`, the "Y" parameter tells the function to return the number of whole years between the two dates. <br> **Months**. The expression `DATEDIF(A2,B2,"YM")` returns the number of months between the two dates, without regard to the years. <BR> **Days**. Finally, the expression `DATEDIF(A2,B2,"MD")` returns the number of days in the interval without regard to month and year. | |  | XL |  |  
| dir() | returns the list of the names defined in a module |  | Y |  |  |  
| Environ$()|use to find out information such as the username, system root, number of processors, domains and home drives from a system Environmental Variable. | |  | XL |   |   
| eval() | Evaluates a string to a numeric value ***AVOID*** | Y |  |  |  |  
| file() | works with files |  | Y |  |  |  
| FIND()| | |  | XL |  |  
| focus() | Emulates the user focusing on a particular form field | Y |  |  |  |  
| fontcolor() | Method of the string object that sets the HTML font color for the string | Y |  |  | Y |  
| form.submit() | Emulates the submission of an HTML form | Y |  |  | Y |  
| hsl() | Determines color based on hue, saturation and luminecense settings |  |  |  | Y |  
| IF() |Test the generated number to determine the character type  | |  | XL |  |  
| INDEX()|return the corresponding item in column/row/range | |  |XL |  |  
| int() | Convert value to an integer | Y | Y |  |  |  
| isNaN()|Returns true if its argument evaluation is NaN (a special value representing something that is "Not a Number"). Returns false otherwise.|Y |  |  |  |  
| len() | returns the number of items in the sequence item |  | Y |  |  |  
| link() | Method of the string object that encloses the string in an <A> HTML tag | Y |  |  | Y |  
| List(\<Tuple>) | Convert a tuple to a list |  | Y |  |  |  
| LOWER()|Convert to lower case characters | |  |XL |  |  
| MATCH()|returns the position of the matching item in column/row/range | |  |XL |  |  
| MAX()()| | |  |XL |  |  
| MIN() | | |  |XL |  | 
| not() | Logical not |  |  |  | CS |  
| OR()| | |  |XL |  |  
| parseFloat()|Converts a string to a floating point number|Y |  |  |  |  
| parseInt()|Converts a string to an integer number|Y |  | |  |  
| PRODUCT()| | |  |XL |  |  
| prompt() | Displays a message in a dialog box and provides a single input field for the user to enter a response to the message. | Y |  |  |  |  
| RAND() |Generate a random number within a given range; to generate a number between one and 15 use: `=RAND()*(15-1)+1` | |  |  
| raw_input() |  |  | Y |  |  |  
| reset() | Emulates the user clicking on the Reset button of a form | Y |  |  |  |  
| rgb() | Determines color based on R - G - B settings |  | Y |  | Y |  
| rgba() | Determines color based on R - G - B and A (Intensity) channel settings |  | Y |  | Y |  
| select() | Emulates selecting text in a field (password, text, text area) | Y |  |  |  |  
| STDDEV()| | |  | XL |  |  
| STDDEVP()| | |  | XL |  |  
| submit() | Emulates a click on the Submit button of a form | Y |  |  |  |  
| SUM()| | |  | XL |  |  
| Tuple(\<List>) | Convert a list to a tuple |  | Y |  |  |  
| Type(\<VarName>) | Returns type of the tested variable |  | Y |  | 
| PMT()|Payment calculation <br> PMT(interest_rate,term-in-months,loan_amount) | |  |XL |  |  
| VAR()| | |  | XL |  |  
| VLOOKUP()|Vertical Lookup | |  | XL |  |  

### DateDiff Options
| OPTION |RETURNS  |  
| -- | -- |  
| "Y" |Full years between dates  |  
| "M" |Full months between dates  |  
| "D" |Days between dates  |  
| "YM" |Months between dates, ignoring year  |  
| "MD" |Days between dates, ignoring month and year  |  
| "YD" |Days between dates, ignoring year  |  

## Examples

#### DIR()
PYTHON:
```python
import sys
dir(sys)
```

#### FILE()
PYTHON:
```python
f = file(<FileName>, 'w') # open for writing
f.write(<Message>) # write text to file
f.close() # close the file
f = file(<FileName>) # Read mode is assumed by default
line = f.readline()
```


