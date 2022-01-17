# Schemes (AKA: Protocols) for URLs & URIs

Uniform Resource Locators (URLs) specify the location of files on other servers. A URL includes the type of resource being accessed (e.g., Web, gopher, WAIS), the address of the server, and the location of the file. The syntax is:
```url
scheme://host.domain [:port]/path/ filename
```

| Scheme | Description | Examples |  
| ---- | ---- | ---- |  
| cache | retrieves the cached version of a website <br> **Note**: Google must be3 set as your search engine for the browser you are using. |    |    
| chrome: | Google Chrome Browser Link |  |  
| file:/ | a file on your local system |     |     
| ftp: | File Transfer Protocol | ---- |  
| git: | Access the Remote Repository  | `git://deluge-torrent.org/deluge.git` |  
| gopher | a file on a Gopher server |   |   
| http: <br> https: | Hypertext Transfer Protocol | ```myRE=new RegExp("^https","i"); ``` <br> ```var myHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");```|  
| mailto: | Open Mail Client  | `mailto:someone@somewher.org[?subject=<SubjectLineString>`  |  
| news | a Usenet newsgroup |    |    
| shell: |  |  |  
| ssh: | ---- | ---- |  
| ssl: | ---- | ---- |  
| tel: | Telephony Link |  |  
| telnet: | a connection to a Telnet-based service | ---- |  
| WAIS | a file on a WAIS server |   |  

