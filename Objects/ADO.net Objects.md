# ADO.net Objects

- https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/

ADO.NET is a set of classes that expose data access services for .NET Framework programmers. ADO.NET provides a rich set of components for creating distributed, data-sharing applications. It is an integral part of the .NET Framework, providing access to relational, XML, and application data. ADO.NET supports a variety of development needs, including the creation of front-end database clients and middle-tier business objects used by applications, tools, languages, or Internet browsers.


## VBS data source connection
```vbscript
Dim objConnection as Object
Set objConnection = CreateObject("ADODB.Connection")
'Open the connection to Active Directory
objConnection.Provider = ("ADsDSOObject")
'Set the connection as active for this VBS script
objConnection.Open "Active Directory Provider"
```

## VBS data source query command
```vbscript
Dim objCommand as Object
Const ADS_SCOPE_SUBTREE = 2
Set objCommand = CreateObject("ADODB.Command")
' Set the VBS data source connection to use Active Directory
objCommand.ActiveConnection = objConnection
' Specify the query to execute
objCommand.CommandText = <SQLString>
objCommand.Properties("SearchScope") = ADS_SCOPE_SUBTREE
```

## VBS data source record set
```vbscript
Dim objRecordSet as Object
Set objRecordSet = objCommand.Execute  ' Run the SQL
objRecordSet.RecordCount
objRecordSet.MoveFirst 
objRecordSet.MoveNext
objRecordSet.Fields()
Do Until objRecordSet.EOF
Loop
```

