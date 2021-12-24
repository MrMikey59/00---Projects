# Python Reserved Words

Note:  

* Line contunation is by placing a `\` at the end of the line to be extended.
* Code lines end with `;`.
* Blocks are created by indentation.

| Reserved Word | Description | Example |  
| --- | --- | --- |  
| and|Logical operator|  |  
| assert|  |  |  
| break|Used to exit any loop|  |  
| class|Class definition| `class <ClassName>:` <BR> `  pass # An empty block` <BR> `<ObjInstanceName> = <ClassName>()`|  
| continue|Used to jump to start of a loop|  |  
| def |Define a function| `def <Name> ( <argl>, <arg2>, … , <argN>[ = <DefaultValue>]):` <BR> `  <PyStatements>` <BR> `  return <value> ` <BR> `# Only those parameters which are at the end of the` <BR> `# parameter list can be given default argument values`|  
| del|Delete|`del <VarName>`|  
| exec|  |  |  
| for in else|  |`for <LoopValue> in { range(<Start>,<End+1>,<Increment>) \| [<List>] \| [<ListName>] }:` <BR> `  <PyStatements>` <BR> `  [continue \| break]` <BR> `else:` <BR> `  <PyStatements>`|  
| from import|Include external modules in a script file.|`[from <ModuleName> ] import { <ComponentName> | * } [ as <VarName> ]`|  
| global|Defines a global variable within a function definition|  |  
| if elif  (Else If) else||`if <ConditionalStatement>:` <BR> `  <PyStatements>` <BR> `[ elif <ConditionalStatement2>:` <BR> `  <PyStatements> ]…` <BR> `else:` <BR> `  <PyStatements>`|  
| in|List & String inclusion test, For Loop list designation|  |  
| is|  |  |  
| lambda|  |  |  
| not|Logical operator|  |  
| or|Logical operator|  |  
| pass|used in Python to indicate an empty block of statements; used as a placeholder|  |  
| print |  |  |  
| raise|Instigate an exception|`raise <ExceptionClassName>(<DetailsTuple>)` <BR> `class <ExceptionClassName>(Exception):` <BR> `  '''A user-defined exception class.'''` <BR> `  def __init__(self, length, atleast):` <BR> `    Exception.__init__(self)` <BR> `    self.length = length` <BR> `    self.atleast = atleast`|  
| return|Provide output of a defined function|  |  
| try except finally||`try:` <BR> `  <PyStatements>` <BR> `[except <ExceptionName>:` <BR> `  <PyStatements>  # Executed only when <ExceptionName> error occurs]…` <BR> `except:` <BR> `  <PyStatements>  # Executed when any error occurs` <BR> `[else:` <BR> `  <PyStatements>  # Executed only when no error occurs]` <BR> `[finally:` <BR> `  <PyStatements>  # Executed every time]`|  
| while else||`while <ConditionalStatement>:` <BR> `  <PyStatements>` <BR> `  [continue \| break]` <BR> `else:` <BR> `  <PyStatements>`|  

