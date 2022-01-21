# Python

This folder contains Python notes, snippets and examples.

[Python](https://www.python.org)  

* [Changes](http://docs.python.org/modindex.html)  
* [Documentation](http://www.python.org/doc/ )   
* [Downloads](http://www.python.org/download/)  

#### Additional Sources  
* [A Byte of Python](www.byteofpython.info) or [Alternate](http://www.ibiblio.org/swaroopch/byteofpython/read/)  
* [Charming Python](http://gnosis.cx/publish/tech_index_cp.html) - an excellent series of Python-related articles by David Mertz.
* [Code Like a Pythonista: Idiomatic Python](http://python.net/~goodger/projects/pycon/2007/idiomatic/handout.html) by David Goodger
* [Dive into Python 3](https://diveintopython3.net/) by Mark Pilgrim  
* [Harvard Intro to Python](http://tdc-www.harvard.edu/Python.pdf) (pdf)
* [How to Think Like a Computer Scientist](https://www.greenteapress.com/thinkpython/html/index.html ) by Allen B. Downey
* [IronPython](http://www.ironpython.com/) - an implementation of the Python interpreter in C# language and can run on the .NET / Mono / DotGNU platform.
* [Lython](http://www.caddr.com/code/lython/) - a Lisp frontend to the Python language.
* [ONLamp Python](http://www.onlamp.com/python/) - a Python DevCenter
* [Python Cookbook](http://aspn.activestate.com/ASPN/Python/Cookbook/) - an extremely valuable collection of recipes or tips 
* [Python Notes](http://pythonnotes.blogspot.com/) - a blog
* [Python Programming Wikibook](http://en.wikibooks.org/wiki/Python_Programming)

## Python Modules

###### Astromony Modules
  *	[AstroPy](http://www.astro.washington.edu/users/rowen/AstroPy.html) 
  *	[iPython](http://ipython.scipy.org/) (better shell distributed computing)   
  *	[Python Astronomy Modules](http://astlib.sourceforge.net/) 
  *	[Python Astronomer Wiki](http://macsingularity.org/astrowiki/tiki-index.php?page=python)   
  *	[Python for Astronomers](http://www.iac.es/sieinvens/siepedia/pmwiki.php?n=HOWTOs.EmpezandoPython)  
  *	[SciPy](http://www.scipy.org/) (collection of science tools)   

###### Astronomy Wrappers for Modules
  * CasaPy (Casa)
  * ParselTongue (AIPS)
  * PYGILDAS (GILDAS)
  * PyIMSL (IMSL)
  * PyMIDAS (MIDAS)
  * PyRAF (IRAF)

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

#### PyDS9 & Python-sao
* Interaction with DS9; Display Python 1-D and 2-D arrays in DS9; Display FITS files in DS9  
  http://code.google.com/p/python-sao/   

#### PyFits  
* FITS I/O made simple  
http://www.stsci.edu/resources/software_hardware/pyfits 

#### [PyPi](https://pypi.org/)  
  * [Bbfreeze](http://pypi.python.org/pypi/bbfreeze)
  * [Overlay](https://pypi.org/project/overlay/)
  * [PyVirtualDisplay](https://pypi.org/project/PyVirtualDisplay/) 
  * [requests](https://pypi.org/project/requests/) 
  * [selenium](https://pypi.org/project/selenium/)

#### Python(x,y)  
* a free scientific and engineering development software for numerical computations data analysis and data visualization  
  http://www.pythonxy.com/

#### Pytho Imaging Library 
  http://www.pythonware.com/products/pil/index.htm

#### Sage  
* a free open-source mathematics software system licensed under the GPL. It combines the power of many existing open-source packages into a common Python-based interface  
  http://www.sagemath.org/

#### sys 
* included in Python  
```python
import sys
```
  | Example | Description | 
  | --- | --- |  
  | `sys.argv` <BR> `sys.argv[<Index>]`|Arguments list <BR> Individual item in list <BR> `for i in sys.argv:’ <BR> `print i` | 
  |  `sys.path`|AKA `PYTHONPATH` environmental variable| 
  |  `sys.exit()`|Exit the program| 

#### tarfile 
* included in Python  

#### time 
* included in Python  
```python
time.strftime('%Y%m%d%H%M%S')  # String Format Time
time.sleep(<NumberofSeconds>)
```

#### Twisted
  http://www.twistedmatrix.com/products/twisted

#### wxPython
  http://www.wxpython.org/  

#### zipfile 
* included in Python  

## Python Processes

| Process | Description | 
| --- | --- |  
| Get Help (at >>> prompt)|`help(<HelpTopic>)  # enter q to quit help.`|  
| Open IDLE | Start -> Programs -> Python x.x -> IDLE (Python GUI) |  

## Special Characters

| Special Character | Description |  
| :---: | --- |  
| # | Hashtag/Pound Sign: Start of a single comment |  
| _ | Underscore: allowed within all user created names, leading & trailing underscores have special meanings |  
| """ … """ | Multiline document string (comment) – can proceed any function or class |  

#### Special Comments
| Comment | Example |  
| --- | --- |  
| Set Code Page to UTF-8|`# -*- coding: utf-8 -*-` |  
| Define Python storage location|`#!/usr/bin/python` |  
| State the Filename|`# Filename: <FileName>.py` |  

#### Use the Multiline Comment as a Function Descriptor
```python
Def my_function(x, y):
  “““This is a docstring. This 
  function does blah blah blah.”””
  <PyCommands>
```

