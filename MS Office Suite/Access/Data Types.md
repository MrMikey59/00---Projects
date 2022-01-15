# Access Data Types

- https://support.office.com/en-us/article/Introduction-to-data-types-and-field-properties-30ad644f-946c-442e-8bd2-be067361987c?ui=en-US&rs=en-US&ad=US#refcalculated  

| Data Type |Use to display |  
| -- | -- |  
| Text |Short, alphanumeric values, such as a last name or a street address. Note, beginning in Access 2013, Text data types have been renamed to Short Text. |  
| Number |Numeric values, such as distances. Note that there is a separate data type for currency. |  
| Currency |Monetary values. |  
| Yes/No |Yes and No values and fields that contain only one of two values.  |  
| Date/Time |Date and Time values for the years 100 through 9999. |  
| Rich Text |Text or combinations of text and numbers that can be formatted using color and font controls.  |  
| Calculated Field |Results of a calculation. The calculation must refer to other fields in the same table. You would use the Expression Builder to create the calculation. Note, Calculated fields were first introduced in Access 2010. |  
| Attachment |Attached images, spreadsheet files, documents, charts, and other types of supported files to the records in your database, similar to attaching files to e-mail messages. |  
| Hyperlink |Text or combinations of text and numbers stored as text and used as a hyperlink address. |  
| Memo |Long blocks of text. A typical use of a Memo field would be a detailed product description. Note, beginning in Access 2013, Memo data types have been renamed to Long Text. |  
| Lookup |Displays either a list of values that is retrieved from a table or query, or a set of values that you specified when you created the field. The Lookup Wizard starts and you can create a Lookup field. The data type of a Lookup field is either Text or Number, depending on the choices that you make in the wizard. <BR> Lookup fields have an additional set of field properties, which are located on the Lookup tab in the Field Properties pane. |  

**Note**: Attachment and Calculated data types aren't available in .mdb file formats.

## Hyperlink 
Introduced in Access 9, this field type for storing links to files on:  
- your computer (a file name);  
- a network (a UNC name);  
- the Internet (a URL address).  

A hyperlink entry contains three parts separated by pound signs (#). The template is:  
 `display text # file name # any reference within the file`  
Use the Insert menu to add a hyperlink entry, and Access takes care of the three parts. Only the "display text" part of the field is shown, and clicking on the field executes the link. 
So how can you view its full contents or edit the field?   
1. Click the attached label, to move the cursor into the hyperlink field. (If the field has no label, use the Tab key.)   
2. Press F2 to edit the field. All three parts of the hyperlink are displayed for editing.   

Some examples may help show how this works:  
| Hyperlink Contents|Displays|When Clicked  |  
| -- | -- | -- |  
| My photo#c:\pix\photo.bmp#|My photo|Loads picture into MS Paint.  |  
| SS data#ss.xls#Sheet 1!G9|SS data|Loads spreadsheet into Excel, selecting cell G9.  |  
| Do labels#\\\\jane\\pub\\label.doc# |Do labels|Loads the network document into WinWord.  |  
| Edit Clients##Clients\|Edit Clients|Opens Clients form in current database (no file specified).  |  
| Sales info##Query Sales|Sales info|Runs the Sales query in the current database.*  |  
| IBM#http://www.ibm.com#|IBM|Loads your web browser and opens the URL.  |  
| #www.canon.com#|www.canon.com|Loads your web browser, assuming prefix of "http://". |  
**NOTE**: The word "Query" in this hyperlink is optional. However, if the current database had a form named Sales, Access would open the form in preference to the query.

## Date and Time  
MS Access includes a built-in Date/Time data type that is ideal for storing chronological point-data (e.g. birthdate, date/time of an event, and so forth). It is not, however, very good for storing duration times(e.g. times for a sporting event). It can be used for such, but when the time exceeds 23:59:59, instead of going on to 24:00:00, it goes to 12/31/1899 00:00:00. See below for details on the way I recommend using to store duration times.  
Access stores a Date/Time field as a double-precision floating point number. The number represents the number of days(and fractions of day) since 12/30/1899 12:00:00 am. Hence, a value of 1 would translate to 12/31/1899 12:00:00am, and a value of 2.5 would be 1/1/1900 12:00:00 PM. These values can be manipulated by either standard mathematical functions or by the many Date-related functions Access provides. See below for a list and description of Access's Date/Time functions.  
| Format | Description |  
| -- | -- |  
| Short Date |Display the date in a short format. Depends on your regional date and time settings. For example, 3/14/2001 for USA. |  
| Medium Date |Display the date in medium format. For example, 3-Apr-09 for USA. |  
| Long Date |Display the date in a long format. Depends on you're the regional date and time settings. For example, Wednesday, March 14, 2001 for USA.  |  
| Time am/pm |Display the time only using a 12 hour format that will respond to changes in the regional date and time settings.  |  
| Medium Time |Display the time followed by AM/PM. |  
| Time 24hour |Display the time only using a 24 hour format that will respond to changes in the regional date and time settings |  

Date format components
| Format | Description |  
| -- | -- |  
| d|Day of the month in one or two numeric digits, as needed (1 to 31). |  
| dd|Day of the month in two numeric digits (01 to 31). |  
| ddd|First three letters of the weekday (Sun to Sat). |  
| dddd|Full name of the weekday (Sunday to Saturday). |  
| w|Day of the week (1 to 7). |  
| ww|Week of the year (1 to 53). |  
| m|Month of the year in one or two numeric digits, as needed (1 to 12). |  
| mm|Month of the year in two numeric digits (01 to 12). |  
| mmm|First three letters of the month (Jan to Dec). |  
| mmmm|Full name of the month (January to December). |  
| q|The quarter of the year (1 to 4). |  
| y|Number of the day of the year (1 to 366). |  
| yy|Last two digits of the year (01 to 99). |  
| yyyy|Full year (0100 to 9999). |  

Time format components
| Format | Description |  
| -- | -- |  
| h|Hour in one or two digits, as needed (0 to 23). |  
| hh|Hour in two digits (00 to 23). |  
| n|Minute in one or two digits, as needed (0 to 59). |  
| nn|Minute in two digits (00 to 59). |  
| s|Second in one or two digits, as needed (0 to 59). |  
| ss|Second in two digits (00 to 59). |  

Clock format components
| Format | Description |  
| -- | -- |  
| AM/PM|Twelve-hour clock with the uppercase letters "AM" or "PM," as appropriate. For example, 9:34PM. |  
| am/pm|Twelve-hour clock with the lowercase letters "am" or "pm," as appropriate. For example, 9:34pm. |  
| A/P|Twelve-hour clock with the uppercase letter "A" or "P," as appropriate. For example, 9:34P. |  
| a/p|Twelve-hour clock with the lowercase letter "a" or "p," as appropriate. For example, 9:34p. |  
| AMPM|Twelve-hour clock with the appropriate morning/afternoon designator as defined in the regional settings of Windows. |  

Predefined formats 
| Format | Description |  
| -- | -- |  
| c|Same as the General Date predefined format. |  
| ddddd|Same as the Short Date predefined format. |  
| dddddd|Same as the Long Date predefined format. |  
| ttttt|Same as the Long Time predefined format. |  

#### Number
|  Format |Use to display  |  
| -- | -- |  
| General |Numbers without additional formatting exactly as it is stored. |  
| Currency |General monetary values. |  
| Euro |General monetary values stored in the EU format. |  
| Fixed |Numeric data.  |  
| Standard |Numeric data with decimal. |  
| Percentage |Percentages. |  
| Scientific |Calculations. |  

#### Yes/No
In Access, a Yes/No field stores only two values: Yes or No. If you use a text box to display a Yes/No field, the value displays as -1 for Yes and 0 for No.
| Data Type |Use to display  |  
| -- | -- |  
| Check Box |A check box. |  
| Yes/No |Yes or No options |  
| True/False |True or False options. |  
| On/Off |On or Off options. |  

### What to do when Null isn't Null  
Many end users encounter a problem when they use Microsoft Access 97, 2000, or 2002 as a front-end viewer for data files created by the "big" relational database management system in the house. Namely, certain Access SQL commands don't work the same way they do in native Access. While some anomalies can only be explained by referring to application-specific documentation, others are resolved with easy workarounds.  
Here's one scenario that causes frequent frustrations: On the Access side, the user tries to enter Is Null or Is Not Null as a validation rule for a field or as the criteria in a query. If the database field owned by the third-party application isn't null-able, the query will fail to retrieve the records it should.  
If the database engine detects that error, it may display a message to help the user make appropriate changes. But when the lack of support for a null goes undetected, the user may be left wondering why a perfectly good query didn't work.  
When you work with a database in which null isn't null, try this workaround. Instead of Is Null, use ="" (equal sign followed by a pair of quotation marks). When you want to specify Is Not Null, enter >"" (greater than sign followed by a pair of quotation marks). The two sets of quotation marks represent a zero-length string, which frequently succeeds when Is Null and Is Not Null fail. 

# Images
As Access database will grow HUGE storing the pictures inside it, the generally accepted way of doing this is to store the path to the file in a field, then adding an image control to a form. In the onCurrent event of the form, run a line of code like:
```vbscript
me.image1.picture = me.path_to_pic_field
```

## Image Properties  
The **Picture Type** property lets you determine whether Access embeds a copy of the image or links to the image. If you're only going to use the image in one report, you might as well embed it. However, if you're going to use the image in more than one report or in a number of forms, consider linking instead. That way, in each instance, Access stores only the link to the image, not the image itself.   
The **Picture Size Mode** property defaults to Clip, which works the best for most images. (The Stretch and Zoom settings can distort the image.) The Picture Alignment property, which defaults to Center, lets you determine the position on the page where the background image appears.   
If you want a busier background design, set the **Picture Tiling** property to Yes. When you do, Access will cover the entire report page with tiled copies of the image.  

