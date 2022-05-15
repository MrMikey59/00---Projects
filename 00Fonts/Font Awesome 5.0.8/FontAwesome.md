# Font Awesome 

### Files
FontAwesome.otf
fontawesome-webfont.eot
fontawesome-webfont.svg
fontawesome-webfont.ttf
fontawesome-webfont.woff
fontawesome-webfont.woff2

### CSS Font Call
**Note**: This assumes you have the files in the ```fonts\FontAwesome``` directory.

```css
@font-face{
  font-family:'FontAwesome Webfont';src:url('../fonts/fontawesome-webfont.eot');
  src:url('fonts/FontAwesome/fontawesome-webfont.eot?#iefix') format('embedded-opentype'),
       url('fonts/FontAwesome/fontawesome-webfont.woff2') format('woff2'),
       url('fonts/FontAwesome/fontawesome-webfont.woff') format('woff'),
       url('fonts/FontAwesome/fontawesome-webfont.ttf') format('truetype'),
       url('fonts/FontAwesome/fontawesome-webfont.svg') format('svg')
}
```

