# .editconfig IDE Settings

- [Define .editorconfig](https://editorconfig.org/)  
- [Example .editorconfig for CVSCode](https://github.com/RehanSaeed/EditorConfig/blob/main/.editorconfig)  

**Note For Windows Users**: To create an .editorconfig file within Windows Explorer, you need to create a file named .editorconfig. (note the trailing dot), which Windows Explorer will automatically rename to .editorconfig for you.  

**Note**: Only forward slashes (/, not backslashes) are used as path separators and octothorpes (#) or semicolons (;) are used for comments.  

#### Wildcard Patterns
Special characters recognized in section names for wildcard matching:
| Character | Dexcription |  
| --- | --- |  
| * | Matches any string of characters, except path separators (/) |  
| ** | Matches any string of characters |  
| ? | Matches any single character |  
| [name] | Matches any single character in name |  
| [!name] | Matches any single character not in name |  
| {s1,s2,s3} | Matches any of the strings given (separated by commas) (Available since EditorConfig Core 0.11.0) |  
| {num1..num2} | Matches any integer numbers between num1 and num2, where num1 and num2 can be either positive or negative |  

Special characters can be escaped with a backslash so they won't be interpreted as wildcard patterns.

Simple Sample .editorconfig  
```
# Is this the top-most EditorConfig file
root = true

# Set Character Set
charset = utf-8

# Defaults for All Files
[*]
charset = utf-8
end_of_line = lf
indent_style = space
indent_size = 2
insert_final_newline = true
trim_trailing_whitespace = true

# For Brew Files
[Brewfile]
insert_final_newline = false

# Make Files
[{Makefile, **.mk}]
# Use tabs for indentation (Makefiles require tabs)
indent_style = tab

# For Markdown Files
[*.{md, markdown}]
max_line_length = off  
trim_trailing_whitespace = false  

# For Programing languages
[*.{js,py,ts,vb}]
charset = utf-8

# For Python Files
[*.py]
indent_size = 4

# For YAML Files
[*{.yml,.yaml}]
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 2
```

## .editorconfig file supports the following file types:

| Language | Files Extensions |  
| --- | --- |  
| C# | .cs, .csx, .cake |  
| CSS | .css, .sass, .scss, .less, .pcss |  
| HTML | .htm, .html |  
| JavaScript | .js, .jsm, .vue |  
| JSON | .json, .json5 |  
| Makefile | makefile |  
| Markdown | .md |  
| Script | .sh, .ps1, .psm1, .bat, .cmd |  
| SVG | .svg |  
| Typecript | .ts, .tsx, .vue |  
| Visual Basic | .vb, vbx |  
| Visual Studio | .sln, .csproj, .vbproj, .vcxproj, .vcxproj.filters, .proj, .projitems, .shproj |  
| XML | .xml, .config, .props, .targets, .nuspec, .resx, .ruleset |  
| YAML | .yml, .yaml |  

