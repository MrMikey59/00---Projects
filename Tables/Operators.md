# Operators

#### Tips  
* You should add space around operators so that it's easier to read.  

## Order of Precedence

#### PEDMAS	(Simple)
Parentheses > Exponents > Multiplication > Division > Addition > Subtraction  

#### Extended Operator Precedence
| Operator|Description|  
| --- | --- |  
| lambda|Lambda Expression|  
| or|Boolean OR|  
| and|Boolean AND|  
| not x|Boolean NOT|  
| in, not in|Membership tests|  
| is, is not|Identity tests|  
| <, <=, >, >=, !=, ==|Comparisons|  
| ||Bitwise OR|  
| ^|Bitwise XOR|  
| &|Bitwise AND|  
| <<, >>|Shifts|  
| +, -|Addition and subtraction|  
| *, /, %|Multiplication, Division and Remainder|  
| +x, -x|Positive, Negative|  
| ~x|Bitwise NOT|  
| **|Exponentiation|  
| x.attribute|Attribute reference|  
| x[index]|Subscription|  
| x[index:index]|Slicing|  
| f(arguments ...)|Function call|  
| (expressions, ...)|Binding or tuple display|  
| [expressions, ...]|List display|  
| {key:datum, ...}|Dictionary display|  
| `expressions, ...`|String conversion|  

## Common Operators

| Operator | Type | Description | JS | Py |
| :---: | --- | --- | :---: | :---: |  
|-|Arithmetic operator|Subtracts the right from the left operand | Y | Y |  
| %|Arithmetic operator| Modulo: Divides the left by the right operand and calculates the remainder | Y | Y |    
| *|Arithmetic operator|Multiplies the operands | Y | Y |  
| /|Arithmetic operator|Divides the left by the right operand | Y | Y |  
| +|Arithmetic operator|Adds the operands | Y | Y |  
| **|Arithmetic operator|Power: Returns x to the power of y||Y|  
| //|Arithmetic operator|Floor Division: Returns the floor of the quotient||Y|  
| =|Assignment operator | assigns the remainder to the left operand | Y | Y |  
| %=|Assignment operator|Divides the left by the right operand and assigns the remainder to the left operand | Y |  |  
| *=|Assignment operator|Multiplies the operands and assigns the result to the left operand | Y |  
| /=|Assignment operator|Divides the left by the right operand and assigns the result to the left operand | Y |  |  
| +=|Assignment operator|Adds together the operands and assigns the result to the left operand | Y |  |  
| =|Assignment operator|Assigns the value of the right operand to the left operand | Y |  |  
| -=|Assignment operator|Subtracts the right from left operand and assigns the result to the left operand | Y |  |  
| !=|Comparison operator|Not Equal To: Evaluates to true if the operands are not equal | Y | Y |  
| <|Comparison operator|Evaluates to true if the left operand is less than the right operand | Y | Y |  
| <=|Comparison operator|Evaluates to true if the left operand is less than or equal to the right operand | Y | Y |  
| ==|Comparison operator|Evaluates to true if the operands are equal | Y | Y |  
| >|Comparison operator|Evaluates to true if the left operand is greater than the right operand | Y | Y |  
| >=|Comparison operator|Evaluates to true if the left operand is greater than or equal to the right operand | Y | Y |  
| typeOf |Comparison operator| Returns a string indicating the type of the operand | Y |  
| !|Logical operator|Not: Evaluates to true if the operand is false and to false if the operand is true| Y |   |  
| &&|Logical operator|And: Evaluates to true when both operands are true| Y |  |  
| \|\||Logical operator|Or: Evaluates to true when either operand is true| Y |  |  
| <<|Logical operator|Left Shift: Shifts the bits of the number to the left by the number of bits specified. (Each number is represented in memory by bits or binary digits i.e. 0 and 1)||Y|  
| >>|Logical operator|Right Shift: Shifts the bits of the number to the right by the number of bits specified.||Y|  
| &|Logical operator|Bitwise AND: Bitwise AND of the numbers||Y|  
| \||Logical operator|Bit-wise OR: Bitwise OR of the numbers||Y|  
| ^|Logical operator|Bit-wise XOR : 5 ^ 3 gives 6||Y|  
| ~|Logical operator|Bit-wise invert: The bit-wise inversion of x is -(x+1)||Y|  
| not|Logical operator|Boolean NOT: If x is True, it returns False. If x is False, it returns True.||Y|  
| and|Logical operator|Boolean AND: x and y returns False if x is False, else it returns evaluation of y||Y|  
| or|Logical operator|Boolean OR: If x is True, it returns True, else it returns evaluation of y||Y|  
| +|String operator| Concatenation: Combines the operands into a single string| Y | Y |  
| *|String operator| Repeat: Combines the operand into a single string repeating it a number of times|  | Y |  

## Wild Cards 
| Character | Description | Usage | 
| ---- | ---- | ---- | 
| * | Any Character or number of characters | Windows, MSO, RegEx | 
| \[ ] | List of acceptable characters for a position | RegEx | 
| \[! ] | List of unacceptable characters for a position | RegEx | 

## Like Operator
You can use the [ ] wildcard with the Like operator in your queries to search for two or more single characters in a field.  
For example, suppose you want to find all customers with the following ZIP codes: 08052, 08053, or 08055. To use the [ ] wildcard, enter the following in your query's Criteria row under the ZIP Code field: `Like "0805[235]"`  
This expression searches for all field entries whose last character matches one of the characters specified between the brackets. Conversely, to search for all customers that don't live within these three ZIP code areas, place an exclamation point before the list: `Like "0805[!235]"` 
The exclamation point inside the brackets stands for Not in the list. The query results will include all entries whose characters do not match any character in the list within the brackets.  
You can combine the [ ] wildcard with any other wildcard character. For example, you can combine the * wildcard character with [ ] to search for any ZIP codes that begin with 0805, 0807, or 0808: `Like "080[578]*"`  

