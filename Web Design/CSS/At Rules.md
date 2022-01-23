# CSS At Rule (@ Rules)


## Font

## Media
```css
.hidden-desktop{ 
  display:none; 
  }
.visible-desktop{ 
  display:inherit; 
  }

.hidden-phone{ 
  display:none; 
  }
.visible-phone {
  display:none; 
  }

.hidden-tablet{ 
  display:none; 
  }
.visible-tablet{ 
  display:none; 
  }
```

## Print
```css
@media print{
  .visible-print{display:inherit !important;} 
  .hidden-print{display:none !important;}
}
```

## Viewport
```css
@-ms-viewport{
   width: device-width;
 }
```

