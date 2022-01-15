# Processes used within GitHub Website

Git Bash is an emulator that allows you to interact with Git just like you would on a Linux or Mac terminal. 

git Process Diagram: ![git Process Diagram](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/git%20Block%20Diagram.png)  

Select Soft Wrap:![GitHub 01](https://github.com/MrMikey59/00---Projects/blob/master/Git%20%26%20GitHub/GitHub%2001.png)  

#### Resources related to GitHub:

* [git](https://gitforwindows.org)
    * [git Branching](https://learngitbranching.js.org)
    * [git School](http://git-school.github.io/visualizing-git)
    * [Visual Git Cheat Sheet](http://ndpsoftware.com/git-cheatsheet.html)  
* [GitHub Help](https://help.github.com)
* [GitHub Gists](https://gist.github.com/)  
* [GitHub Guides](https://guides.github.com)
* [GitHub Blog](https://blog.github.com/)
* [.gitignore](https://git-scm.com/docs/gitignore)
* [.gitattribute](https://git-scm.com/docs/gitattributes )

#### For PowerShell

* [Posh git](https://github.com/dahlbyk/posh-git)  
To use posh-git, I only needed to run the following two commands in PowerShell:
```powershell
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
install-module posh-git
```

### Sitewide Keyboard Shortcuts
![Sitewide Shortcuts](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/GitHub%20Sitewide%20Shortcuts.png)

### Repository Shortcuts
![Repository Shortcuts](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/GitHub%20Repository%20Shortcuts.png)

### Create a Folder in GitHub
1. Click on Create new File.
2. Enter the folder name that you want, then press /.
3. Enter a file name (Index.md). You must enter some text to describe the use of the folder.
4. Click Commit new file to create the folder and the new Index file.

### Move a File in GitHub
1. In your repository, browse to the file you want to move. 
2. In the upper right corner of the file view, click to open the file editor.
3. In the filename field, change the name of the file using these guidelines:
    -	To move the file into a subfolder, type the name of the folder you want, followed by /. Your new folder name becomes a new item in the navigation breadcrumbs.
    -	To move the file into a directory above the file's current location, place your cursor at the beginning of the filename field, then either type ../ to jump up one full directory level, or type the backspace key to edit the parent folder's name.
4. At the bottom of the page, type a short, meaningful commit message that describes the change you made to the file. You can attribute the commit to more than one author in the commit message. For more information, see "Creating a commit with multiple co-authors."
5. Below the commit message fields, decide whether to add your commit to the current branch or to a new branch. If your current branch is the default branch, you should choose to create a new branch for your commit and then create a pull request. For more information, see "Creating a new pull request."
6. Click Propose file change or Commit changes.


