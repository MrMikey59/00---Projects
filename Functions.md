# Functions (Built In)
CS - Cascade Style Sheet
JS - JavaScript  
Py - Python
VB - VBScript
WD - Web Design (HTML, CSS, etc.)
XL - MS Office Excel

| Function | Description | JS | Py | VB | WD |  
| --- | --- | :---: | :---: | :---: | :--: |   
| alert() | Displays a message in a dialog box. | Y |  | |  |   
| AND() |  |  | | XL |  |  
| AVERAGE() | | | | XL |  |  
| blur() | Emulates removing focus from an element (password, text, text area) | Y |  |  | Y |  
| calc() | Calculation for CSS & HTML |  |  |  | Y |   
| CHAR() |Returns the character with the ASCII number provided in the argument   | | | XL |  |  
| click() | Emulates clicking on a form element (button, checkbox, radio button, reset, selection list, submit) | Y |  |  |  |  
| CONCATENATE() |Combines the characters in selected cells into a string | | | XL |  |  
| confirm() | Displays a message in a dialog box with OK and Cancel buttons. | Y |  |  |  |  
| contrast() |  |  |  |  | Y |    
| COUNT()| | |   | XL |  |  
| COUNTNUMS()| | |  | XL |  |  
| DATE() - returns day of week| | |  | XL |  |  
| DATEDIF() | to calculate elapsed calendar time <BR> `=DATEDIF(<StartDate,<EndDate>,<CalendarUnitOption)` <BR> **Years**. In the expression `DATEDIF(A2,B2,"Y")`, the "Y" parameter tells the function to return the number of whole years between the two dates. <br> **Months**. The expression `DATEDIF(A2,B2,"YM")` returns the number of months between the two dates, without regard to the years. <BR> **Days**. Finally, the expression `DATEDIF(A2,B2,"MD")` returns the number of days in the interval without regard to month and year. | |  | XL |  |  
| dir() | returns the list of the names defined in a module |  | Y |  |  |  
| drop-shadow() |  |  |  |  | Y |    
| Environ$()|use to find out information such as the username, system root, number of processors, domains and home drives from a system Environmental Variable. | |  | XL |   |   
| eval() | Evaluates a string to a numeric value ***AVOID*** | Y |  |  |  |  
| file() | works with files |  | Y |  |  |  
| FIND()| | |  | XL |  |  
| focus() | Emulates the user focusing on a particular form field | Y |  |  |  |  
| fontcolor() | Method of the string object that sets the HTML font color for the string | Y |  |  | Y |  
| form.submit() | Emulates the submission of an HTML form | Y |  |  | Y |  
| grayscale() |  |  |  |  | Y |    
| hsl() | Determines color based on hue, saturation and luminecense settings |  |  |  | Y |  
| hue-rotate() |  |  |  |  | Y |    
| IF() |Test the generated number to determine the character type  | |  | XL |  |  
| INDEX()|return the corresponding item in column/row/range | |  |XL |  |  
| int() | Convert value to an integer | Y | Y |  |  |  
| invert() |  |  |  |  | Y |    
| isNaN()|Returns true if its argument evaluation is NaN (a special value representing something that is "Not a Number"). Returns false otherwise.|Y |  |  |  |  
| len() | returns the number of items in the sequence item |  | Y |  |  |  
| linear-gradient() |  |  |  |  | Y |    
| link() | Method of the string object that encloses the string in an <A> HTML tag | Y |  |  | Y |  
| List(\<Tuple>) | Convert a tuple to a list |  | Y |  |  |  
| LOWER()|Convert to lower case characters | |  |XL |  |  
| MATCH()|returns the position of the matching item in column/row/range | |  |XL |  |  
| MAX() - Maximum value in range| | |  |XL |  |  
| MIN() - Minimum value in range | | |  |XL |  | 
| not() | Logical not |  |  |  | CS |  
| OR()| | |  |XL |  |  
| parseFloat()|Converts a string to a floating point number|Y |  |  |  |  
| parseInt()|Converts a string to an integer number|Y |  | |  |  
| PRODUCT()| | |  |XL |  |  
| prompt() | Displays a message in a dialog box and provides a single input field for the user to enter a response to the message. | Y |  |  |  |  
| RAND() -Returns a pseudorandom value between 0 & <1 (Recalculates every entry into the worksheet!) |Generate a random number within a given range; to generate a number between one and 15 use: `=RAND()*(15-1)+1` | |  |  
| RANDBETWEEN(StartValue, EndValue) - Returns a pseudorandom value between the start and end values | | |  |XL |  |  
| raw_input() |  |  | Y |  |  |  
| rect(0, 0, 0, 0) |  |  |  |  | cs |    
| reset() | Emulates the user clicking on the Reset button of a form | Y |  |  |  |  
| rgb() | Determines color based on R - G - B settings |  | Y |  | Y |  
| rgba() | Determines color based on R - G - B and A (Intensity) channel settings |  | Y |  | Y |  
| rotate(999deg) |  |  |  |  | cs |   
| scale() |  |  |  |  | cs |    
| select() | Emulates selecting text in a field (password, text, text area) | Y |  |  |  |  
| sepia() |  |  |  |  | Y |  
| SQRT() - Calculates square root of the value | | |  | XL |  |  
| STDDEV()| | |  | XL |  |  
| STDDEVP()| | |  | XL |  |  
| submit() | Emulates a click on the Submit button of a form | Y |  |  |  |  
| SUM() - Sum of numeric values within range| | |  | XL |  |  
| translate() <BR> translateX() <BR> translateY() |  |  |  |  | CS |  
| Tuple(\<List>) | Convert a list to a tuple |  | Y |  |  |  
| Type(\<VarName>) | Returns type of the tested variable |  | Y |  | 
| PMT()|Payment calculation <br> PMT(interest_rate,term-in-months,loan_amount) | |  |XL |  |  
| url() | URL Load |  |  |  | Y |    
| VAR()| | |  | XL | Y |  
| VLOOKUP() - Value designated in the values table | Vertical Lookup | |  | XL |  |  

### AND Statement
The AND statement can take up to 30 logical arguments. It returns TRUE only if all the logical expressions are TRUE.

### AVERAGE Statement
Compute an Average That Excludes Zero Values 
While Excel's AVERAGE function ignores blank cells, it doesn't ignore cells that contain 0. This can result in inaccurate analysis of the data. 
For example, let's say you want to calculate the average score for all students who took the final exam. Using the AVERAGE function, you might enter: =AVERAGE(B3:B23). 
But if two students were absent and received a grade of 0, the result of the formula wouldn't give a true picture of the average grade. However, you can calculate the average and exclude the absentee students' grades. 
Follow these steps: 
1.	Enter the following formula: =AVERAGE(IF(B3:B23<>0,B3:B23)) 
2.	Press [Ctrl][Shift][Enter]. 
The entered formula first creates an array that includes only nonzero values in the range. The AVERAGE function then uses this array as its argument.

### COUNTIF Function 
You can use Excel's COUNTIF function to compare the frequency of specific data in a field. For example, say you've set up a worksheet that tracks members' attendance at special events. 
This database contains the following fields: First Name, Last Name, Event, and Event Date. The Event field contains a code-name for each of the club's events (such as Golf for a golf outing, Picnic for the annual picnic, and Dance for the annual Christmas ball). 
To determine how many members attended each event, follow these steps: 
1.	Select the column that contains the Event data. 
2.	Click the Name box, type Data, and press [Enter]. 
3.	Select a blank cell, click the Name box, type Event, and press [Enter]. 
4.	Select another blank cell and enter the following formula: 
=COUNTIF(Data,Event) 
To count the number of Golf Outing attendees, enter Golf in the Event cell. The COUNTIF function counts all of the occurrences of Golf in the Data range to return a total of all attendees to that event. 

### DATE
Take Advantage of the DATE Function 
Would you like to know on which day of the week New Year's Day will fall next year? Or what about your birthday? Determining which day of the week a date will be may sound easy, but it can get tricky. 
Excel's DATE function can make this process painless. Using this function and custom formatting, you can create a worksheet that returns the day of the week for any date. 
Follow these steps: 
1.	In A1, enter Month. 
2.	In B1, enter Day. 
3.	In C1, enter Year. 
4.	In A5, enter Day of Week. 
5.	In B5, enter the following formula:
=DATE(C2,A2,B2) 
6.	Right-click B5, and select Format Cells. 
7.	On the Number tab, select Custom from the Category list box. 
8.	Enter dddd in the Type text box, and click OK. 
To find the day of the week for the next New Year's Day, enter 1 in A2, enter 1 in B2, and enter the year in C2. B5 will display Saturday. (By the way, the entry for Month must be the number for the month, not the name.)

### DateDiff Options
| OPTION |RETURNS  |  
| -- | -- |  
| "Y" |Full years between dates  |  
| "M" |Full months between dates  |  
| "D" |Days between dates  |  
| "YM" |Months between dates, ignoring year  |  
| "MD" |Days between dates, ignoring month and year  |  
| "YD" |Days between dates, ignoring year  |  

### HYPERLINK
Excel 2010 is notoriously bad at storing hyperlinks. We think the problem you’re experiencing when the path disappears is happening because the spreadsheet and the file it’s linking to are in the same directory. In this case, Excel stores the path as a relative path. As the relative path is the same directory, there’s no need to keep the path. You could store the linked files in a different directory, but that’s not a very satisfactory solution.
If you know the links shouldn’t be updated once entered, you can set up Excel to prevent this happening. In the File menu click Options, and in the dialog that appears, click Advanced. In the General section, click the Web Options button. In the Files tab, untick ‘Update links on save’. This will leave links as you enter them.
If you’re still having problems, there’s another setting you can change which is set on a spreadsheet-by-spreadsheet basis. From the File menu, choose Info. In the dialog that appears, click on ‘Show all properties’. This is located on the right-hand side of the page. In the list that appears, click on Hyperlink Base. Set this to a folder you’re never going to use, possibly even a folder that doesn’t exist. You might choose \\FakeServer\FakeFolder\ as the non-existent folder. This is the default start added to a link where you don’t specify the full path, and it shouldn’t have any effect if you’ve entered the full path, but it does sometimes solve the problem you reported. However, our final suggestion works no matter how Excel is set up. Basically, Excel has a function called =Hyperlink(). If you want to open a file located in C:\data, you’d type =HYPERLINK("C:\data\house proj.xls"). 
The advantage here is that the link is entered as static text, and Excel interprets it anew each time from that static text, so there’s no chance of the link being shortened due to Excel trying to be clever.

### IF(statement being tested, value if true, value if false)
Use IF Tests For Determining Multiple Conditions 
One of the first functions beginning Excel users learn is the IF function, which takes the form 
`IF(condition, [value_if_TRUE], [Value_If_FALSE])`
Condition	a logical expression to test
`[value_if_TRUE], [Value_If_FALSE]`	return values based on the conditional expression results; can be calculations or name values)
When you use this function, you typically test only one condition at a time. For example, in the formula `=IF(A1>10,"Great","Average")`, the only condition evaluated is whether the value in cell A1 is greater than 10. 
However, there may be times you want to display a result depending on whether any one of multiple conditions is true. Suppose you need a formula that says: If A1 contains 10, or if A15 is greater than 20, or if A25 is less than 100, display "Great." But if none of these conditions is true, display "Average." 
You can create such a formula by combining the IF and the OR functions. The OR function takes the form OR (condition1, condition2, condition3) and evaluates to a logical true value if any of the conditions is true. If all of the conditions are false, the OR function evaluates to a logical false. In our example, the formula would take the following form: 
`=IF(OR(A1=10,A15>20,A25<100),"Great","Average")` 
If any of the three conditions is true, the OR function evaluates to true, and the formula returns "Great." If all three conditions evaluated by the OR function are false, the OR function returns a value of false, and the IF test returns "Average." 
Returns a value if the expression (or condition) is evaluated as TRUE; returns another value if the expression (or condition) is evaluated as FALSE.

Find a Value in a Data Range with an Array Formula 
You can use Excel's built-in Find feature to determine whether a specific value appears in a range of cells. But this isn't your only option; you can also use an array formula. 
For example, let's say you have a spreadsheet that lists names, addresses, and phone numbers in the range A3:H110. You've named this range Customers, and you use cell B1 (named NamedEntry) to enter the name you wish to verify. 
Follow these steps: 
1.	In C1, enter this formula: 
=IF(OR(NamedEntry=Customers),"Found","Not Found") 
2.	Press `[Ctrl][Shift][Enter]`. 
If you enter "Mary" in B1, the formula compares the value Mary to each cell in the Customers range. If there is a match, the formula displays Found in C1; if there is no match, it displays Not Found.

### NORMDIST(x, mu, sigma, cumulative)
NORMDIST (x, mu, sigma, cumulative) is most generally used with its last argument set to TRUE. 
In NORMDIST, when the last argument is set to TRUE, NORMDIST returns the cumulative probability that the observed value of a Normal random variable with mean mu and standard deviation sigma will be less than or equal to x. If cumulative is set to FALSE (or 0, interpreted as FALSE), NORMDIST returns the height of the bell-shaped probability density curve.

### OR Statement
The OR statement is very similar to the AND statement except that either argument can be true, rather than both.

### SUM()
This function is used to sum up a series of numbers. You can add individual cells, by separating them with commas, and you can also specify a range of cells. You can use ranges as well as numbers in the SUM() function; just separate each entry by a comma. [use the ALT + = shortcut - works with columns or rows]

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


