# BASH Commands

Typical Bash Prompt: `$`

| Command | Description |  
| --- | --- |  
| cat \<FileName> | List contents of the file. |  
| cd \<Path> | change directory |  
| clear | Clears the terminal |  
| history | list history of commands used in current session <BR> Use `!<Number>` to execute a previous commend. <BR> Use `!-<Number>` to execute a previous command by reverse link <BR> Use `!!` to execute the most recent command. Try `sudu !!` to run a previous command as as a super user instead. <BR> Use `!$` to reuse the previous arguments. <br> Use `!^` to reuse just the first argument in the previous commnad <br> `-c` clears the cache of commands |  
| ls | List structure (folder) contents <BR> ` ls -a` - shows in wide mode <BR> `-la` List all with attributes |  
| md \<Path> | Make a new directory |  
| rm -f \<Path> | remove directory |  
| rm \<FileName> | Remove File(s) |  
| SSH-KeyGen | Create a Secure Shell (SSH) Key <BR> ![SSH-KeyGen](https://github.com/MrMikey59/00---Projects/blob/master/OS%20Scripting/BASH/SSH-KEYGEN.png) |  .
| tee <FileName> | used with pipe to send data to the screen and to a file <BR> `<command> \| tee /path/to/file` <BR> -a for append mode |  
| touch \<FileName> | Create a new file <BR> **Note**: Use . in front of file name to create a hidden file | 
| uname -a |  |  

#### Operators
| Operator | Description | Example |  
| --- | --- | --- |  
| &&	| And logical operator |  |   
|-eq	|Equal operator	 |  |  
| -gt	|Greater than operator	 |  |  
| -lt	|Less than operator	 |  |  
| > | redirects the output of a command to a file, creating it if necessary, in overwrite mode |  |  
| >> | redirects the output of a command to a file, appending the output to the existing contents of the file |  
| + - * / |Arithmetic Operations	| `echo The sum is $(($firstnumber+$secondnumber))` | 

