# Security Certificates  

## Check for Security Certificates Installed  
(Requires "Run as Administrator" for some operations.)  

IE: Tools (`[ALT] + X` or Gear or inetcpl.cpl) → Internet Options → Content → Certificates.  
PS: `Get-ChildItem -Recurse Cert: (gci -r cert:)`  
Windows Run (`WINDOWS + R`)
- certmgr.msc [Certificates – Current User]   
- certlm.msc [Certificates –  Local Computer]  

Each of the system certificate stores has the following types:
- Local machine certificate store: This type of certificate store is local to the computer and is global to all users on the computer. This certificate store is located in the registry under the `HKEY_LOCAL_MACHINE` root.  
- Current user certificate store: This type of certificate store is local to a user account on the computer. This certificate store is located in the registry under the `HKEY_CURRENT_USER` root.

## Using the MMC
Open the personal certificate store and delete the old/expired certificate.  
1. Start > run > MMC > select add snap-in > select certificates > Select local computer  
2. Expand Certificates, expand Personal, click ‘Certificates’ inside Personal  
3. Right click the certificate you’d like to remove and click delete  
![Certificate in MMC](https://github.com/MrMikey59/00---Projects/blob/master/OS%20Scripting/Certificate%20in%20MMC.png)

