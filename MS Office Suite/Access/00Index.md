# Access 

This contains notes, snippets & examples

### Quick Facts
- Access calls:
  - a column a *Field*
  - a row a *Record*
  - a database a *Record Set*.
- Access uses "*" for the wildcard instead of "%".  
- Open Access without running Macros by holding the `SHIFT` key when opening the database.  
- Open your database, go to `File > Database Properties` and click the `Contents` tab. There you'll see a plain-text list of all the Tables, Queries, Forms, Reports, Data Access Pages, Macros, and Modules in the database.
- The ampersand is a reserved character in Access: Access formats the character immediately following an ampersand as underlined, so add an `&` in a Label to make a keyboard shortcut with the following letter. Letters can only be used once in each form. To use the ampersand as a character, enter it twice as `&&` will be displayed as `&`.
- Use a blank form as the base form. Set it to `Popup` Y; `Modal` N then set the menu & all other forms to `Popup` Y, `Modal` Y.
- Set a Forms property `AutoCenter` to Yes opens the form in the center of the screen regardless of where you last left it. This setting works in newer versions after setting the default Document Window Options property to Overlapping Windows. (Look in the Current Database options in the Application Options section.) 
- Set a Forms property `Resize` to Yes opens your form to its designed size and not the size last used.  

### Access Ribbon Menus  
- **File** - Menu items to Open, Close, Create new, Save and Print databases and their contents. This menu also has the Exit item to exit Access.  
- **Edit** - Cut, Copy, Paste, Delete  
- **View** - View different database objects (tables, queries, forms, reports)  
- **Insert** - Insert a new Table, Query, Form, Report, etc.  
- **Tools** - A variety of tools to check spelling, create relationships between tables, perform analysis and reports on the contents of the database.  
- **Window** - Switch between different open databases.  
- **Help** - Get help on Access.  
- **Developer** - Allows access to macros & scriptng tools.  

### Keyboard Shortcuts
| Process | Description |  
| -- | -- |  
| Copy the current selection. | [CTRL] + C  |  
| Display the database window. | [F11]  |  
| Insert a carriage return in a memo or text field. | [CTRL] + [ENTER]  |  
| Insert the current time. | [CTRL] + :  |  
| Insert the data from the same field in the previous record. | [CTRL] + '  |  
| Insert the day's date. | [CTRL] + ;  |  
| Open a new database. | [CTRL] + N  |  
| Paste the contents from the clipboard. | [CTRL] + V  |  
| Save the current database. | [CTRL] + S  |  
| Summon the Find And Replace dialog box. | [CTRL] + F  |  
| Summon the Open dialog box. | [CTRL] + O  |  
| Summon the Print dialog box. | [CTRL] + P  |  
| Switch between the Visual Basic Editor and the previous active window. | [ALT] + [F11]  |  
| Undo changes made to the current field. | [ESC]  |  
| Undo changes made to the current record. | [ESC] + [ESC]  |  
| Undo the most recent change you've made. | [CTRL] + Z  |  

## Processes
| Process | Description |  
| -- | -- |  
| Add a Designer Background | Open your report in Design View, go to View | Properties, and click the Format tab of the Report dialog box. Start by entering the path to your image, or click the Build button for the Picture property and navigate to the image you want to use for the background of your report. BMP, ICO, WMF, DIB, and EMF files are officially supported formats. |  
| Compact a Database | Go to `Tools | Database Utilities | Compact and Repair Database` | 
| Copy Records | In the Datasheet view, you can select a single record by clicking on any field in the record you want to copy and going to Edit | Select Record. You can also click on the Record Selector (the gray box at the leftmost edge of the datasheet) to select a single record, or, to select multiple records, you can click-and-drag in the Record Selector column. To copy the selected record(s), press `[CTRL] + C`. |  
| Open Database in Exclusive Mode | Begin by launching Access, then go to `File > Open`. Select the database you want to protect by clicking once on the database's name. <BR> Click the drop-down arrow that appears on the right edge of the Open dialog box's Open button. <BR> From the resulting list, choose `Open Exclusive`. When you do, Access will open the database like it normally does. |
| Paste a Table into a Dataset | Click the `*` to select the entire empty row, then paste. |  
| Remove a Database Password | Go to `Tools > Security` and choose the `Unset Database Password` option. Enter the password and Access will remove it.  |  
| Save Table to Excel | To convert the entire table, go to File | Export and change the Save As Type option to the appropriate Excel version. |  
| Set a Default Field Size | To do so, Go to `Tools > Options >Tables/Queries`. In the `Default Field Sizes` section, enter the new default value for the Text/Number fields.  |  
| Set a password for your database | Open the file in Exclusive mode. <BR> Go to `Tools > Security > Set Database Password`. Enter the password twice and click OK.  |  
| Sorting in Access | If you want to sort your records on a single column, you have three choices: <br> - Click anywhere in that column and then click the Sort Ascending button, located on the Table Datasheet toolbar. <br> - Click in the column on which you want to sort, go to Records | Sort, and choose either the Ascending or Descending option. <br> - Right-click a column and choose either Sort Ascending or Sort Descending from the context menu. |
| Undo Design Changes | Open the File menu and choose Revert. Choosing Revert restores the form or report to the state it was in before you started the current editing session. |  

## Boost keyboard efficiency 
Users expect ease of use from an interface. If you work in Access on a regular basis, you can customize the way the interface responds to the keyboard. If you teach Access, new users will appreciate learning how to be master of their keyboard domains. 
Access users seem to fiddle most with the way Access responds to arrow keys. To investigate your options, go to Tools | Options | Keyboard and to the section labeled Arrow Key Behavior. You should base your settings choices on your most common editing activity. 
For example, if you do a lot of entering in a field and in almost all cases you replace the entire entry, you probably want to set the Behavior Entering Field selection to Select Entire Field and set the Arrow Key Behavior selection to Next Field. 
On the other hand, you might routinely edit portions of entries in a field. When Access is set to select the entire field upon entry, you'll have to press [F2] or use the mouse to deselect the entry and get to work. In that case, you'll probably want to change the Behavior Entering Field to Go To Start Of Field and set the Arrow Key Behavior to Next Character. 

### Convert Access 2000 or Access 2002 - 2003 database to the .accdb format  
To convert an Access 2000 or Access 2002 - 2003 database (.mdb) to the .accdb file format, you must first open the database by using Access 2007 or Access 2010, and then save it in the .accdb file format.  
1. On the File tab, click Open.  
2. In the Open dialog box, select and open the Access 2000 or Access 2002 - 2003 database (.mdb) that you want to convert.  
  **Note**: If the Database Enhancement dialog box appears, the database is using a file format that is earlier than Access 2000.   
3. On the File tab, click Save & Publish, and then, under Database File Types click Access Database (*.accdb).  
4. Click Save As. If any database objects are open when you click Save As, Access prompts you to close them prior to creating the copy. Click Yes to make Access close the objects, or click No to cancel the entire process. If needed, Access will also prompt you to save any changes. 
5. In the Save As dialog box, type a file name in the File name box, and then click Save.  

Access creates the copy of the database, and then opens the copy. Access automatically closes the original database.  

## Convert Backwards  
When you want to convert an Access 97 (or older) database to Access 2000 or 2002, the process is straightforward: Launch Access 2000, go to File | Open, navigate to the old database, and click OK. At the Convert/Open Database dialog box, you'll have the choice of converting the database to the new format or opening it while maintaining backward compatibility.  
However, if you need to convert an Access 2000 database back to Access 97, File | Save As won't help--but you can still convert an Access 2000 database into a format that Access 97 can use. 
To do so, follow these steps:  
- Open the database, go to Tools | Database Utilities | Convert Database, and select To Prior Access Database Version.  
- Enter a new name in the Convert Database Into dialog box. The file extension will remain the same, MDB.  

As is typically the case when you convert any program file to an earlier format, in the conversion to the older version you may lose some features or functionality that existed in the newer version.

## Copy data from one Access table to another 
Before Office XP, Access users who wanted to copy columns of data from one table to another in a database had to copy and paste each column separately. With XP's Office Clipboard Task Pane, Access users can copy as many as 24 columns of data to the clipboard, and then later paste some or all of the columns into another table. Follow these instructions to copy data from one Access table to another.  
First, follow these steps to collect the columns of data you wish to copy:  
1. Click Edit | Office Clipboard to display the Clipboard Task Pane.  
2. Open the table from which you want to copy the data, and select the first column of data to copy.  
3. Click Copy, and a partial listing of data for that column will appear as an item in the Clipboard Task Pane.  
4. Repeat Steps 2 and 3 for each column of data you wish to add to the clipboard.  
5. Close the source table.  

Next, follow these steps to paste the columns to a new table:  
1. Open the table to which you want to copy the data, and select the blank column in which you want to paste an item from the clipboard. To avoid errors, ensure that the data type of the destination column is the same as that of the column to be pasted.  
2. In the Clipboard Task Pane, click the item that lists the column you want to paste and confirm the paste.  
3. Rename the field if necessary.  
4. Repeat Steps 1 through 3 for each item you wish to paste from the clipboard.  
5. Save your changes before closing the new table.  
	
Before closing the Clipboard Task Pane, click the Clear All button to clear the clipboard.  

## Link an Access database to an Excel spreadsheet 
If you currently use Excel as your database software, you aren't limited to Excel's filtering and reporting functions. You can use Access tools to create queries and reports on spreadsheet data without importing that data into Access. Follow these steps: 
	1. In an existing Access database, click File | Get External Data | Link Tables. 
	2. In the Link dialog box's Look In text box, select the folder that contains the spreadsheet to which you want to link. 
	3. Select Microsoft Excel in the Files Of Type text box, select the Excel file, and click Link. 
	4. When the Link Spreadsheet Wizard presents a view of the data, click Next. 
	5. Select the First Row Contains Column Headings check box, enter a name for the linked table, and click Finish. 
The external table, identified with an Excel worksheet icon and link arrow, is now listed as a table object in your database. Any changes made to the spreadsheet in Excel will automatically be reflected in any query, report, or form derived from the linked table.

## Publish Database Contents On An Intranet 
Are you looking for a fast and easy way to publish the contents of an Access database on your company intranet? Access' Data Page Wizard is the answer.  
Start by creating a Web page designed for read-only purposes, one that will display the contents of a database, such as the company telephone list. First, open the database file. In the Objects list, click Pages, and double-click Create Data Access Page By Using Wizard. Like most of the other design wizards, the first page design screen asks you to decide which fields from which tables and queries you want to include on the page. Next, you'll be asked about grouping options, then sorting options.  
When you get to the screen where the first question asks for the title of your new page, go ahead and enter the title. Next, select the Do You Want To Apply A Theme To Your Page? check box. Click Finish, and Access will launch the Theme dialog box.  
In the Theme dialog box, you'll be able to preview dozens of combinations of fonts, colors, and backgrounds for your intranet page. If you already have a data page (.htm file) to which you'd like to apply a theme, open that file in Design view. Then go to Format | Theme to launch the Theme dialog box. To preview your resulting data page, point to it with your Web browser. 

## Use Find Command
1. Switch to Datasheet or Form view.  
2. Select the column (or field) you wish to search. If you wish to search all fields or columns, do not select one.  
3. Click Find button on the Toolbar.  
4. In the Find What box, type the value you want to find. You can use wildcards if you don’t know the exact value.  
5. In the Search box, select one of the options.  
6. If you do not have the exact value of the record in the Find What box, choose an option in the Match box.  
7. Choose any other options.  
8. Click Find First.  
9. If the first record found is not the desired record, choose Find Next. Repeat choosing Find Next until you have completed your search.  
10. Click Close.  

## Use Subdatasheets To View Data In A Related Table 
Subdatasheets let users view related records in two tables that share a one-to-many relationship. For example, in a library database, the Authors table and the Books table have a one-to-many relationship; in other words, each record in the Authors table can have more than one record in the Books table.  
Follow these steps to insert subdatasheets to view the related records in these tables:  
- Open the primary table (in this example, the Authors table) and click Insert | Subdatasheet. 
- In the Subdatasheet dialog box, select the related table (in this example, the Books table). 
- In the Link Child Fields drop-down box, select the primary key for the Books table. 
- In the Link Master Fields drop-down box, select the primary key for the Authors table. 
- Click OK. 

If asked, click Yes to establish a relationship between the two tables.  
The subdatasheets are inserted in the Authors Table, which is indicated by a small plus sign displayed in the first column of each record. Clicking the plus sign will display the related records in the Books table.  

## Application Examples
- http://www.iaccessworld.com/hide-navigation-pane-full-menu-shortcut-menu/

#### Quit the Application
```vbscript
This procedure is to be used only on the main form (switchboard)
Private Sub cmdQuitApp_Click()
On Error GoTo Err_cmdQuitApp_Click
' Close Access and all Databases.
  DoCmd.Quit
Exit_cmdQuitApp_Click:
  Exit Sub
Err_cmdQuitApp_Click:
  MsgBox Err.Description
  Resume Exit_cmdQuitApp_Click
End Sub
```

#### Testing Objects
```vbscript
Sub WishVBAHadOverloads(ByVal Obj As Object)
  If TypeOf Obj Is TableDef Then 
    Dim Def As TableDef
    Set Def = Obj
    ' work with Def... 
    Exit Sub
  End If
  If TypeOf Obj Is Form Then 
    Dim Frm As Form
    Set Frm = Obj
    ' work with Frm... 
    Exit Sub
  End If
  Err.Raise 999, "WishVBAHadOverloads", "Bad argument type - expected a TableDef or Form"
End Sub 
```
