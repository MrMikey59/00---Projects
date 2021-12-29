# git - The Version Control System  

The Git Connection: ![Git COnnections](https://github.com/MrMikey59/00---Projects/blob/master/00Pictures/git%20connects%20GitHub%20%26%20GitLab.JPG)

[Set GitHub Credentials](https://git-scm.com/docs/gitcredentials)  

## git Shell Commands  

| Command | Description |  
| --- | --- |  
| add . | Stage all modified files |  
| code . | Open VS Code with current respository |
| explorer \<PathName> | open folder in Windows File Explorer | 
| git add \<FileName> | Create a new file in the current directory/repository <BR> Same as `git stage` |  
| git branch | List all current/available branches |  
| git branch -m \<BranchName> | Open the BranchName branch. |  
| git cat-file [-t \| -p ] \<CommitGUID> | list a commit object <BR> -t list type of the object <BR> -p lists objects parents |  
| git checkout -d \<BranchName> | Delete branch from local repository |  
| git clone \<RepositoryLink> | Open a clone repository |  
| git commit -m \<CommitMessage> | commit updates to repository |
| git config --global user.name \<UserName> <BR> git config --global user.email \<EmailAddress> |  Set global Name & Email |  
| git config user.name \<UserName> <BR> git config user.email \<EmailAddress> |  Set local repository Name & Email |  
| git init | start a git repository in the current directory |  
| git log | shows the git Log for the current repository |  
| git log \<CommitID> | Show the commit details |  
| git log --graph | Show commits in graph form |  
| git merge \<BranchName> | Merge the branch into the current head bracnh |  
| git pull | Copy changes from current GitHub repository |
| git push origin :\<BranchName> | Delete branch from GitHub repository |  
| git stage \<FileList> | stage files for cimmiting |  
| git status | Show status of git |  
| git –version | show current git version |  

Folder .git is hidden. It contains a subfolder called objects where it stores all of the commits for this repository.

