# Functions (Built In)

| Function | Description | JS | Py |  
| --- | --- | :---: | :---: |  
| dir() | returns the list of the names defined in a module |  | Y |  
| file() | works with files |  | Y |  
| int() | Convert value to an integer | Y | Y |  
| isNaN()|Returns true if its argument evaluation is NaN (a special value representing something that is "Not a Number"). Returns false otherwise.|Y |  |  
| len() | returns the number of items in the sequence item |  | Y |  
| List(\<Tuple>) | Convert a tuple to a list |  | Y |  
| parseFloat()|Converts a string to a floating point number|Y |  |  
| parseInt()|Converts a string to an integer number|Y |  | 
| raw_input() |  |  | Y |   
| Tuple(\<List>) | Convert a list to a tuple |  | Y |  
| Type(\<VarName>) | Returns type of the tested variable |  | Y |  


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


