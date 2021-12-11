# Location Object (SRC/URI/URL)

## Common Constants and Variables

### Common Domain Lists

| Domain Types | Example Code |  
| ---- | ---- |  
| Top Domain | `var TopDomainList="ac\|co\|gov\|ltd\|me\|mod\|net\|nic\|nhs\|org\|plc\|police\|sch\|com";` |  

**Usage:** 
```javascript
var domsec=new RegExp("\^("+TopDomainList +")$","i");
```

