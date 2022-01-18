# jsconfig.json

**Tip**: To check if a JavaScript file is part of JavaScript project, just open the file in VS Code and run the JavaScript: Go to Project Configuration command. This command opens the jsconfig.json that the JavaScript file belongs to. A notification is shown if the file is not part of any jsconfig.json project.  

See [Working with JavaScript](https://code.visualstudio.com/docs/nodejs/working-with-javascript) for more advanced jsconfig.json configuration.  
### What is jsconfig.json?  
The presence of jsconfig.json file in a directory indicates that the directory is the root of a JavaScript Project. The jsconfig.json file specifies the root files and the options for the features provided by the [JavaScript language service](https://github.com/Microsoft/TypeScript/wiki/JavaScript-Language-Service-in-Visual-Studio).  

**Tip**: If you are not using JavaScript, you do not need to worry about jsconfig.json.  

**Tip**: jsconfig.json is a descendant of [tsconfig.json](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html), which is a configuration file for TypeScript. jsconfig.json is tsconfig.json with "allowJs" attribute set to true.  

### Why do I need a jsconfig.json file?  
Visual Studio Code's JavaScript support can run in two different modes:
-	**File Scope** - no jsconfig.json: In this mode, JavaScript files opened in Visual Studio Code are treated as independent units. As long as a file a.js doesn't reference a file b.ts explicitly (either using import or CommonJS [modules](http://www.commonjs.org/specs/modules/1.0)), there is no common project context between the two files.

-	**Explicit Project** - with jsconfig.json: A JavaScript project is defined via a jsconfig.json file. The presence of such a file in a directory indicates that the directory is the root of a JavaScript project. The file itself can optionally list the files belonging to the project, the files to be excluded from the project, as well as compiler options (see below).

The JavaScript experience is improved when you have a jsconfig.json file in your workspace that defines the project context. For this reason, we offer a hint to create a jsconfig.json file when you open a JavaScript file in a fresh workspace.
