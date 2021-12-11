# This is an HTA Template

- Be sure to make changes to link colors!

```html
  <!DOCTYPE html>
  <HTML>
    <HTA:APPLICATION
      APPLICATIONNAME = "Your App Name"
      ID="YourAppName"
      BORDER="none"
      SHOWINTASKBAR="no"
      SINGLEINSTANCE="yes"
      SYSMENU="no"
      WINDOWSTATE="maximize"
      SCROLL="no"
      VERSION="1.0"
      CONTEXTMENU="no"
      INNERBORDER="no"
    />
    <META charset="utf-8"/>
    <META http-equiv="X-UA-Compatible" content="IE=edge">
    <META name="viewport" content="width=device-width, initial-scale=1" />
    <META http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <TITLE>Your App Name</TITLE>
    <LINK rel="stylesheet" href="quiz.css" type="text/css">
    <SCRIPT type="text/javascript" src="yourscriptname.js"></SCRIPT>
    <SCRIPT type="text/vbscript" src="yourscriptname.vbs"></SCRIPT>
    <SCRIPT FOR="window" EVENT="onload">
    // Event handler for window.onload()
    // delay the call and avoid 'Access denied' exception
      window.resizeTo (725, 585);
      window.MoveTo (screen.AvailWidth-width)/2,(screen.AvailHeight-height)/2
      document.body.style.visibility = "visible";
    </SCRIPT>
    <STYLE type="text/css">
      html, body {
        height: 100%;
        margin: 0;
        background-color:#FFFFFF;
      }
      A:link {
        text-decoration: none;
        color: #707070;
      }
      A:visited {
        text-decoration: none;
        color: #707070;
      }
      A:hover {
        text-decoration: underline;
        color: #707070;
      }
      A:active {
        text-decoration: underline;
        color: #707070;
      }
    </STYLE>
  </HEAD>

  <BODY onload="">

  </BODY>

  </HTML>
```

# Additional Useful HTA Replacement Elements

### Change Browser Settings
```html
  <META http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <META http-equiv="X-UA-Compatible" content="IE=9"/>
  <META http-equiv="X-UA-Compatible" content="IE=6"/>
```
### Control the Window Size & Placement

```html
  window.resizeTo(<Width>,<Height>)
  var xpos = (screen.width - window.outerWidth) / 2
  var ypos = (screen.height - window.outerHeight) / 2
  window.moveTo(xpos, ypos)
```
