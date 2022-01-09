# Registry 

**Note**: On the Enterprise and Education versions of Win10, Registry Hacks are not used. Use the Group Policy Editor to affect changes.

# Hacks
**CAUTION**: Be sure to backup the registry and/or set a restore point prior to any changes to the Registry!!!  
Change the Registered owner, Product ID or Register Organization, 
Start/Run and type in regedit. When regedit opens, navigate to the following key:  
	`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion`  
To change the values of the RegisteredOrganization, RegisteredOwner, or ProductId, simply double-click on them and replace the original string with your name etc.  

## Add Control Panel to the Desktop right-click menu
Assuming you have created your backup and a restore point, the easiest way to access the Registry is with the built-in registry editor. Click the Cortana search box and type regedit. The first entry in the search results should be the registry editor. Click it to start the app. After answering the security prompt, you should see a window.  
Using the navigation panel on the left side of the window, work your way through the hierarchy until you reach this key:  
  `HKEY_CLASSES_ROOT\Directory\Background\shell`  
The Windows 10 Registry file is huge, so don't be surprised by the amount of scrolling you will have to do to find the right key. Eventually, you will reach the right key  
Right-click the Shell key to open the menu and select New | Key to create a new key in the Registry. Name the key `Control Panel`.  
Now, select the new key you just created, right-click on it, and again select New | Key from the menu to create another new key, which you should name command.  
Select the command key you just created and double-click the Default value entry in the right panel.  
In the Value Data field, type or copy and paste this string: 
  `rundll32.exe shell32.dll,Control_RunDLL`  
Click OK and then close the regedit application. Now, when you right-click an empty area on your Windows 10 Desktop you will see an entry for the traditional Control Panel.  

