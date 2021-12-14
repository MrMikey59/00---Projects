# JavaScript Railroad Diagrams

## Functions & Routines

**Common Immediate Function Block**
```javascript
;(function($, win, doc) {
  "use strict";
  <JSCommands>
})(jQuery, window, document);
```

**JQuery Document Ready Block**
```javascript
$(document).ready(function() {
  <JSCommands>
});
```

**onLoad Event as Attribute to HTML Element**
```javascript
onLoad="window.captureEvents(Event.MOUSEMOVE | Event.MOUSEDOWN | Event.CLICK | Event.KEYPRESS | Event.RESIZE)"
```

**onUnload Event as Attribute to HTML Element**
```javascript
onUnload="window.releaseEvents(Event.MOUSEMOVE | Event.MOUSEDOWN |Event.CLICK | Event.KEYPRESS | Event.RESIZE)"
```
