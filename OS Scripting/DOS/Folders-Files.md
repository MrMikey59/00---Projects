# Handle your Folders and Files

## Change a Directory (CD & CHDIR)
```dos
  CD <DrivePath>
  CD /d C:\Users\Public\Documents
```

## Change Drive
```dos
  <DriveName>:
```

## Change File/folder attributes
Attributes include: Hidden (H), Archive (A), Read-Only (R) & System (S)
```dos
  attrib +H <FolderPathName>
```

## Create a Hiden Folder/Directory
```dos
  rem - Creates and sets hidden attribute on c:\bin
  md c:\bin
  attrib +H c:\bin
```

## Delete/Remove a Directory (RD & RMDIR)
```dos
  RD <DrivePath>
      /S – with subdirectories
      /Q – quiet mode
  RD C:\Users\Public\Documents\Spare
```

## Delete/Remove Files
```dos
  del [<Drive>][<Path>]<FileName>
```

## List a Directory's/Folder's Content
```dos
dir [<Drive>]<FolderPath> [<Options>]
    /ah  -  view all files in a directory (including hidden and system files
    /a-d  -  exclude all folders from the listing and only show files
    /b  -  display list in brief (file names only)
    /d  -  display list in columns
    /s  -  include all sub-folders
```

## Make a Directory (MD & MKDIR)
```dos
  MD <DrivePath>
  MD C:\Users\Public\Documents\Spare
```

## Rename a Directory/File (CD & CHDIR)
```dos
```

