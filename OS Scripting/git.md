# git - The Version Control System  

## git Shell Commands  

| Command | Description |  
| --- | --- |  
| add . | Stage all modified files |  
| code . | Open VS Code with current respository |
| explorer \<PathName> | open folder in Windows File Explorer |  | git add \<FileName> | Create a new file in the current directory/repository | 
| git branch | List all current/available branches |  
| git branch -m <BranchName> | Open the BranchName branch. |  
| git cat-file [-t \| -p ] <CommitGUID> | list a commit object <BR> -t list type of the object <BR> -p lists objects parents |  
| git checkout -d \<BranchName> | Delete branch from local repository |  
| git commit -m \<CommitMessage> | commit updates to repository |
| git init | start a git repository in the current directory |  
| git log | shows the git Log for the current repository |  
| git log \<CommitID> | Show the commit details |  
| git log --graph | Show commits in graph form |  
| git merge <BranchName> | Merge the branch into the current head bracnh |  
| git pull | Copy changes from current GitHub repository |
| git push origin :\<BranchName> | Delete branch from GitHub repository |  
| git status | Show status of git |  
| git –version | show current git version |  

Folder .git is hidden. It contains a subfolder called objects where it stores all of the commits for this repository.

