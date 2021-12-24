# Python Special Values & Methods

| Special Value or Method | Description |  
| --- | --- |  
| `__del__(self)`|(AKA destructor) A class method called when an object is going to die i.e. it is no longer being used and is being returned to the system for reusing that piece of memory|  
| `__doc__`|attribute of the function to access the Document String (docstrings) description in a function definition. [Accessed commonly as `help(<FunctionName>) or pydoc.]`|  
| `__getitem__(self, key)`|Called when x[key] indexing operation is used.|  
| `__init__(self, ...)`|used to initialize a Class instance with any specific characteristics that may be defined – commonly the name of the instance|  
| `__len__(self)`|Called when the built-in len() function is used for the sequence object.|  
| `__lt__(self, other)`|Called when the less than operator ( < ) is used. Similarly, there are special methods for all the operators (+, >, etc.)|  
| `__main__`|attribute of the module that tells the program it is the first called program script and not an imported module; implies that the module is being run standalone by the user|  
| `__name__`|attribute of the module to access it’s name <BR> `if `__name__ == '__main__';`|  
|   <PyCommands>`|  
| `_str__(self)`|Called when we use the print statement with the object or when str() is used.|  
| `<ModuleName>.<VarName>`|Returns the value of VarName from  the module referenced (a field or property)|  
| self|A variable refers to the object itself. When you call a method of this object as MyObject.method(arg1, arg2), it is automatically converted by Python into MyClass.method(MyObject, arg1, arg2) - this is what the special self is all about.|  

## Printer Formatters

| Print Formatter | Descripeion |  
| --- | --- |  
| %s|take the variable on the right and put it in to replace the %s with its value <BR> `print "Hey %s there." % <VarName>` <BR> `y = "Those who know %s and those who %s." % (binary, do_not)`|  
| %r|print this no matter what |  
| %d||  |  

