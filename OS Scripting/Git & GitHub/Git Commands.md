#  Git - The Version Control System (VCS)

* Without Git LFS, you can upload files as large as 100MB.  
* Folder `.git` is hidden. It contains a subfolder called `objects` where it stores all of the commits for this repository. 
* Common Git Branches:
  -	Main(AKA: Master)
  - Production
  - Development
  - Feature1… 
  - Issue1… 
  _ Testing

The Git Connection: ![Git Connections](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/git%20connects%20GitHub%20%26%20GitLab.JPG)

[Git]( https://git-scm.com) 
- [GIT Commands](https://git-scm.com/docs)  
- [Git Cheatsheet](https://training.github.com/downloads/github-git-cheat-sheet/)  
- [Git Docs](https://git-scm.com/doc) 
- [Set GitHub Credentials](https://git-scm.com/docs/gitcredentials)  

[Learn Git Branching]( https://learngitbranching.js.org/) 

Example Repsoitories to Check Out
- https://github.com/FourMInfo/DevOps-Space/wiki/Git-and-Github
- https://github.com/tja4472/wiki/wiki/Git-Hub-Pull-Request
- https://github.com/markcheret/footnotes/wiki/Git-Tips  

# Git Commands
| Git Command | Description |  
| --- | --- |  
| code . | Open VS Code with current respository |  
| explorer \<PathName> | open folder in Windows File Explorer | 
| git add . | Move all files/folders to staging area |  
| git add \<FileName> | Create a new file in the current directory/repository <BR> Same as `git stage` |  
| git branch | List all local branches in the current repository |  
| git branch \<BranchName> | Create a branch |   
| git branch -b \<BranchName> | Create a new branch |  
| git branch -d \<BranchName> | Clean up, delete obsolete branch |  
| git branch -m \<BranchName> | Open the BranchName branch. |  
| git cat-file [-t \| -p ] \<CommitGUID> | list a commit object <BR> -t list type of the object <BR> -p lists objects parents |  
| git checkout \<BranchName> | Switch to working branch |  
| git checkout -b \<BranchName> | Create a new working branch |  
| git checkout -d \<BranchName> | Delete branch from local repository |  
| git checkout --no-track -b \<branch-name> \<remote-name> \<remote-branch> | Create a local branch based on a remote branch |
| git clone \<RepositoryLink> | Open a clone repository |  
| git clone https://github.com/\<ProjectURL> | Copy a community repository into your own space |  
| git commit -m \<CommitTitle> <BR> git commit --message="Initial Commit" –quiet | Commit all staged files/folder into remote repository |  
| git config user.name \<UserName> <BR> git config user.email \<EmailAddress> |  Set local repository Name & Email |  
|
| git config --get credential.helper | Returns name of credential manager |  
| git config --global user.name \<your-name> | Set User Name Setting |  
| git config --global user.email \<your-email> | Set EMail setting |  
| git config --list | List Configuration settings |  
| git init | Intialize a new repository |  
| git log | shows the git Log for the current repository |  
| git log \<CommitID> | Show the commit details |  
| git log --graph | Show commits in graph form |  
| git merge \<BranchName> | Merge the branch into the current head bracnh |  
| git pull | Copy any updates from the GitHub repository to the local repository |  
| git push --set-upstream origin \<BranchName> | Send your new branch to GitHub |  
| git push -u origin main | Copy local repository files/folders to GitHub repository |  
| git push origin :\<BranchName> | Delete branch from GitHub repository |  
| git reflog | List of every thing you've done in git, across all branches! |  
| [git rebase](https://git-scm.com/docs/git-rebase#Documentation/git-rebase.txt--i) | |  
| git remote add origin https://github.com/\<UserName>/\<RepositoryName>.git | Connect Git wit GitHub |  
| git reset | Unstage all |  
| git reset \<FileFolderName> | Unstage file/folder |  
| git reset HEAD@{index} | Rolls git Head back to the <Index> |    
| git status | Check git status |  
| git stage \<FileList> | stage files for cimmiting |  
| git switch | Replacement for checkout or commit??? |  
| git –version | show current git version |   
### Typical Actions to Save new information
```git
git add .
git commit -m <YourCommitMessage> 
git push
```

### Merge a Branch into Main (Master)
```git
git checkout <BranchName> 
git merge main
```
 
