# File Systems Object (FSO)

## Common Constants and Variables

### Common File Type Lists

| File Types | Example Code |  
| ---- | ---- |  
| Archive | ``var ArchiveFiles = "7z\|gz\|rar\|tar\|zip"; `` |  
| Audio | ``var AudioVideoFiles = " aac\|avi\|flv\|mp(3\|4\|e?g\)\|mov\|wma\|wmv "; `` |  
| Documents | ``var DocFiles=" csv\|doc\|doc\|pdf\|ppt\|txt\|xls\|xlsx\|xml"; `` |  
| Image | ``var ImageFiles = "gif\|jpe?g\|png"; `` |  
| Script | ``var ScriptFiles="bas\|bat\|c\|class\|cmd\|coffee\|cpp\|cs\|java\|js\|mod\|ps(1\|2\)\|ts\|vb"; ``  |  
| Others | var OtherFiles = "exe\|js\|sit\|torrent";  |  

**Usage:** 
```javascript
var LinkTest = new RegExp("\\.("+<FileList>t+")$","i"); 
```

