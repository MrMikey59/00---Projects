# Python

This folder contains Python notes, snippets and examples.

Python 3.x https://www.python.org

## Python Modules

#### Matplotlib  
* High quality plotting library.  
http://matplotlib.sourceforge.net/  

#### numpy
* Offers Matlab-ish capabilities within Python; Fast array operations; 2D arrays; multi-D arrays; linear algebra etc.  
Downloads: http://numpy.scipy.org/  
Tutorial: http://www.scipy.org/Tentative_NumPy_Tutorial  

#### os
Operating System (Included): Some of the more useful parts of the os module are listed below Most of them are self-explanatory.
* The os.name string specifies which platform you are using, such as 'nt' for Windows and 'posix' for Linux/Unix users.
* The os.getcwd() function gets the current working directory i.e. the path of the directory from which the curent Python script is working.
* The os.getenv() and os.putenv() functions are used to get and set environment variables respectively.
* The os.listdir() function returns the name of all files and directories in the specified directory.
* The os.remove() function is used to delete a file.
* The os.system() function is used to run a shell command.
* The os.linesep string gives the line terminator used in the current platform. For example, Windows uses '\r\n', Linux uses '\n' and Mac uses '\r'.
* The os.path.split() function returns the directory name and file name of the path.
  ```javascript
  >>> os.path.split('/home/swaroop/byte/code/poem.txt') ('/home/swaroop/byte/code', 'poem.txt')
  ```
* The os.path.isfile() and the os.path.isdir() functions check if the given path refers to a file or directory respectively. Similarly, the os.path.exists() function is used to check if a given path actually exists.

###### Examples of Use
* `os.mkdir(<FolderName>) # make the directory` 
* `os.path.exists(<FolderName>) `
* `os.sep # the directory separator according to your OS`
* `os.system(<CommandString>) `

#### pickle or cpickle
* store any Python object in a file and then get it back later intact  
`<ObjPickle>.dump(<ObjectName>, <FileName>) # dump the object to a file`  
`<ObjVarName> = <ObjPickle>.load(<FileName>) # retrieve the object`

#### PyFits  
* FITS I/O made simple  
http://www.stsci.edu/resources/software_hardware/pyfits 

#### PyPi

  * [requests](https://pypi.org/project/requests/) 
  * [PyVirtualDisplay](https://pypi.org/project/PyVirtualDisplay/) 
  * [selenium](https://pypi.org/project/selenium/)

#### Python(x,y)  
* a free scientific and engineering development software for numerical computations data analysis and data visualization  
http://www.pythonxy.com/

#### Sage  
* a free open-source mathematics software system licensed under the GPL. It combines the power of many existing open-source packages into a common Python-based interface  
http://www.sagemath.org/

