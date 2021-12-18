# Operators

## Common Operators

| Operator | Type | Description | JS |
| :---: | --- | --- | :---: |
|-|Arithmetic operator|Subtracts the right from the left operand | Y |   Y |  
| %|Arithmetic operator|Divides the left by the right operand and calculates the remainder | Y |  
| *|Arithmetic operator|Multiplies the operands | Y |  
| /|Arithmetic operator|Divides the left by the right operand | Y |  
| +|Arithmetic operator|Adds the operands | Y |  
| %=|Assignment operator|Divides the left by the right operand and assigns the remainder to the left operand | Y |  
| *=|Assignment operator|Multiplies the operands and assigns the result to the left operand | Y |  
| /=|Assignment operator|Divides the left by the right operand and assigns the result to the left operand | Y |  
| +=|Assignment operator|Adds together the operands and assigns the result to the left operand | Y |  
| =|Assignment operator|Assigns the value of the right operand to the left operand | Y |  
| -=|Assignment operator|Subtracts the right from left operand and assigns the result to the left operand | Y |  
| !=|Comparison operator|Evaluates to true if the operands are not equal | Y |  
| <|Comparison operator|Evaluates to true if the left operand is less than the right operand | Y |  
| <=|Comparison operator|Evaluates to true if the left operand is less than or equal to the right operand | Y |  
| ==|Comparison operator|Evaluates to true if the operands are equal | Y |  
| >|Comparison operator|Evaluates to true if the left operand is greater than the right operand | Y |  
| >=|Comparison operator|Evaluates to true if the left operand is greater than or equal to the right operand | Y |  
| !|Logical operator|Evaluates to true if the operand is false and to false if the operand is true| Y |   
| &&|Logical operator|Evaluates to true when both operands are true| Y |   
| |||Logical operator|Evaluates to true when either operand is true| Y |   
| +|String operator|Combines the operands into a single string| Y |   

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

