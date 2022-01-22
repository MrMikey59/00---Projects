# Color

#### RGB vs. HEX vs. HSL vs. CYM  
CYM	- Cyan-Yellow-Magenta  
HEX - #FFFFFF (where characters are set as #RRGGBB) or #FFF (where characters are set as #RGB)
HSL	- Hue-Saturation-Luminescence; hsl(h, s, l), where h is hue (0-360 degrees or 0-255), s is saturation (0-255) and l is luminesence (0-255). 
RGB	- Red-Green-Blue; rgb(r,g,b) or rgba(r,g,b,a), where r is red, g is green and b is blue with values between 0 & 255; a is the alpha channel and values are from 0.00 to 1.00)

#### Colors  
- [CSS2 System Colors](https://www.w3.org/TR/css3-color/#css2-system)  
- [CSS3 System Colors](https://www.w3.org/TR/css3-color/)  
- [CSS Color Parser(JS)](https://github.com/deanm/css-color-parser-js)

## Color Palettes
* 🎨 http://coolors.co
* 🎨 http://colorhunt.co
* 🎨 http://paletton.com
* 🎨 http://color-hex.com
* 🎨 http://mycolor.space
## Color Array
```javascript
var arrColors = new Array();
arrColors = {
  "white": "000000",
  "blue": "0000ff",
  "grey": "a0a0a0",
  "lightgrey": "505050",
  "silver": "808080",
  "Black": "ffffff"
};
```

## Color Constants
|Constants|RGB/RGBa Values|Hex Value|
| --- | --- | --- |   
| aliceblue | (240,248,255,1) | #f0f8ff |  
| antiquewhite | (250,235,215,1) | #faebd7 |  
| aqua | (0,255,255,1) | #00ffff |  
| aquamarine | (127,255,212,1) | #7fffd4 |  
| azure | (240,255,255,1) | #f0ffff |  
| beige | (245,245,220,1) | #f5f5dc |  
| bisque | (255,228,196,1) | #ffe4c4 |  
| black | (0,0,0,1) | #000000 |  
| blanchedalmond | (255,235,205,1) | #ffebcd |  
| blue | (0,0,255,1) | #0000ff |  
| blueviolet | (138,43,226,1) | #8a2be2 |  
| brown | (165,42,42,1) | #a52a2a |  
| burlywood | (222,184,135,1) | #deb887 |  
| cadetblue | (95,158,160,1) | #5f9ea0 |  
| chartreuse | (127,255,0,1) | #7fff00 |  
| chocolate | (210,105,30,1) | #d2691e |  
| coral | (255,127,80,1) | #ff7f50 |  
| cornflowerblue | (100,149,237,1) | #6495ed |  
| cornsilk | (255,248,220,1) | #fff8dc |  
| crimson | (220,20,60,1) | #dc143c |  
| cyan | (0,255,255,1) | #00ffff |  
| darkblue | (0,0,139,1) | #00008b |  
| darkcyan | (0,139,139,1) | #008b8b |  
| darkgoldenrod | (184,134,11,1) | #b8860b |  
| darkgray | (169,169,169,1) | #a9a9a9 |  
| darkgrey | (169,169,169,1) | #a9a9a9 |  
| darkgreen | (0,100,0,1) | #006400 |  
| darkkhaki | (189,183,107,1) | #bdb76b |  
| darkmagenta | (139,0,139,1) | #8b008b |  
| darkolivegreen | (85,107,47,1) | #556b2f |  
| darkorange | (255,140,0,1) | #ff8c00 |  
| darkorchid | (153,50,204,1) | #9932cc |  
| darkred | (139,0,0,1) | #8b0000 |  
| darksalmon | (233,150,122,1) | #e9967a |  
| darkseagreen | (143,188,143,1) | #8fbc8f |  
| darkslateblue | (72,61,139,1) | #483d8b |  
| darkslategray | (47,79,79,1) | #2f4f4f |  
| darkslategrey | (47,79,79,1) | #2f4f4f |  
| darkturquoise | (0,206,209,1) | #00ced1 |  
| darkviolet | (148,0,211,1) | #9400d3 |  
| deeppink | (255,20,147,1) | #ff1493 |  
| deepskyblue | (0,191,255,1) | #00bfff |  
| dimgray | (105,105,105,1) | #696969 |  
| dimgrey | (105,105,105,1) | #696969 |  
| dodgerblue | (30,144,255,1) | #1e90ff |  
| firebrick | (178,34,34,1) | #b22222 |  
| floralwhite | (255,250,240,1) | #fffaf0 |  
| forestgreen | (34,139,34,1) | #228b22 |  
| fuchsia | (255,0,255,1) | #ff00ff |  
| gainsboro | (220,220,220,1) | #dcdcdc |  
| ghostwhite | (248,248,255,1) | #f8f8ff |  
| gold | (255,215,0,1) | #ffd700 |  
| goldenrod | (218,165,32,1) | #daa520 |  
| gray | (128,128,128,1) | #808080 |  
| grey | (128,128,128,1) | #808080 |  
| green | (0,128,0,1) | #008000 |  
| greenyellow | (173,255,47,1) | #adff2f |  
| honeydew | (240,255,240,1) | #f0fff0 |  
| hotpink | (255,105,180,1) | #ff69b4 |  
| indianred | (205,92,92,1) | #cd5c5c |  
| indigo | (75,0,130,1) | #4b0082 |  
| ivory | (255,255,240,1) | #fffff0 |  
| khaki | (240,230,140,1) | #f0e68c |  
| lavender | (230,230,250,1) | #e6e6fa |  
| lavenderblush | (255,240,245,1) | #fff0f5 |  
| lawngreen | (124,252,0,1) | #7cfc00 |  
| lemonchiffon | (255,250,205,1) | #fffacd |  
| lightblue | (173,216,230,1) | #add8e6 |  
| lightcoral | (240,128,128,1) | #f08080 |  
| lightcyan | (224,255,255,1) | #e0ffff |  
| lightgoldenrodyellow | (250,250,210,1) | #fafad2 |  
| lightgray | (211,211,211,1) | #d3d3d3 |  
| lightgrey | (211,211,211,1) | #d3d3d3 |  
| lightgreen | (144,238,144,1) | #90ee90 |  
| lightpink | (255,182,193,1) | #ffb6c1 |  
| lightsalmon | (255,160,122,1) | #ffa07a |  
| lightseagreen | (32,178,170,1) | #20b2aa |  
| lightskyblue | (135,206,250,1) | #87cefa |  
| lightslategray | (119,136,153,1) | #778899 |  
| lightslategrey | (119,136,153,1) | #778899 |  
| lightsteelblue | (176,196,222,1) | #b0c4de |  
| lightyellow | (255,255,224,1) | #ffffe0 |  
| lime | (0,255,0,1) | #00ff00 |  
| limegreen | (50,205,50,1) | #32cd32 |  
| linen | (250,240,230,1) | #faf0e6 |  
| magenta | (255,0,255,1) | #ff00ff |  
| maroon | (128,0,0,1) | #800000 |  
| mediumaquamarine| (102,205,170,1) | #66cdaa |  
| mediumblue | (0,0,205,1) | #0000cd |  
| mediumorchid | (186,85,211,1) | #ba55d3 |  
| mediumpurple | (147,112,219,1) | #9370d8 |  
| mediumseagreen | (60,179,113,1) | #3cb371 |  
| mediumslateblue | (123,104,238,1) | #7b68ee |  
| mediumspringgreen | (0,250,154,1) | #00fa9a |  
| mediumturquoise | (72,209,204,1) | #48d1cc |  
| mediumvioletred | (199,21,133,1) | #c71585 |  
| midnightblue | (25,25,112,1) | #191970 |  
| mintcream | (245,255,250,1) | #f5fffa |  
| mistyrose | (255,228,225,1) | #ffe4e1 |  
| moccasin | (255,228,181,1) | #ffe4b5 |  
| navajowhite | (255,222,173,1) | #ffdead |  
| navy | (0,0,128,1) | #000080 |  
| oldlace | (253,245,230,1) | #fdf5e6 |  
| olive | (128,128,0,1) | #808000 |  
| olivedrab | (107,142,35,1) | #6b8e23 |  
| orange | (255,165,0,1) | #ffa500 |  
| orangered | (255,69,0,1) | #ff4500 |  
| orchid | (218,112,214,1) | #da70d6 |  
| palegoldenrod | (238,232,170,1) | #eee8aa |  
| palegreen | (152,251,152,1) | #98fb98 |  
| paleturquoise | (175,238,238,1) | #afeeee |  
| palevioletred | (219,112,147,1) | #d87093 |  
| papayawhip | (255,239,213,1) | #ffefd5 |  
| peachpuff | (255,218,185,1) | #ffdab9 |  
| peru | (205,133,63,1) | #cd853f |  
| pink | (255,192,203,1) | #ffc0cb |  
| plum | (221,160,221,1) | #dda0dd |  
| powderblue |(176,224,230,1)  | #b0e0e6 |  
| purple | (128,0,128,1) | #800080 |  
| red | (255,0,0,1) | #ff0000 |  
| rosybrown | (188,143,143,1) | #bc8f8f |  
| royalblue | (65,105,225,1) | #4169e1 |  
| saddlebrown | (139,69,19,1) | #8b4513 |  
| salmon | (250,128,114,1) | #fa8072 |  
| sandybrown | (244,164,96,1) | #f4a460 |  
| seagreen | (46,139,87,1) | #2e8b57 |  
| seashell | (255,245,238,1) | #fff5ee |  
| sienna | (160,82,45,1) | #a0522d |  
| silver | (192,192,192,1) | #c0c0c0 |  
| skyblue | (135,206,235,1) | #87ceeb |  
| slateblue | (106,90,205,1) | #6a5acd |  
| slategray | (112,128,144,1) | #708090 |  
| slategrey | (112,128,144,1) | #708090 |  
| snow | (255,250,250,1) | #fffafa |  
| springgreen | (0,255,127,1) | #00ff7f |  
| steelblue | (70,130,180,1) | #4682b4 |  
| tan | (210,180,140,1) | #d2b48c |  
| teal | (0,128,128,1) | #008080 |  
| thistle | (216,191,216,1) | #d8bfd8 |  
| tomato | (255,99,71,1) | #ff6347 |  
| turquoise | (64,224,208,1) | #40e0d0 |  
| violet | (238,130,238,1) | #ee82ee |  
| wheat | (245,222,179,1) | #f5deb3 |  
| white | (255,255,255,1) | #ffffff |  
| whitesmoke | (245,245,245,1) | #f5f5f5 |  
| yellow | (255,255,0,1) | #ffff00 |  
| yellowgreen | (154,205,50,1) | #9acd32 |  

```javascript
var Colors = {
    aliceblue       :"#f0f8ff",
    antiquewhite    :"#faebd7",
    aqua            :"#00ffff",
    aquamarine      :"#7fffd4",
    azure           :"#f0ffff",
    beige           :"#f5f5dc",
    bisque          :"#ffe4c4",
    black           :"#000000",
    blanchedalmond  :"#ffebcd",
    blue            :"#0000ff",
    blueviolet      :"#8a2be2",
    brown           :"#a52a2a",
    burlywood       :"#deb887",
    cadetblue       :"#5f9ea0",
    chartreuse      :"#7fff00",
    chocolate       :"#d2691e",
    coral           :"#ff7f50",
    cornflowerblue  :"#6495ed",
    cornsilk        :"#fff8dc",
    crimson         :"#dc143c",
    cyan            :"#00ffff",
    darkblue        :"#00008b",
    darkcyan        :"#008b8b",
    darkgoldenrod   :"#b8860b",
    darkgray        :"#a9a9a9",
    darkgrey        :"#a9a9a9",
    darkgreen       :"#006400",
    darkkhaki       :"#bdb76b",
    darkmagenta     :"#8b008b",
    darkolivegreen  :"#556b2f",
    darkorange      :"#ff8c00",
    darkorchid      :"#9932cc",
    darkred         :"#8b0000",
    darksalmon      :"#e9967a",
    darkseagreen    :"#8fbc8f",
    darkslateblue   :"#483d8b",
    darkslategray   :"#2f4f4f",
    darkslategrey   :"#2f4f4f",
    darkturquoise   :"#00ced1",
    darkviolet      :"#9400d3",
    deeppink        :"#ff1493",
    deepskyblue     :"#00bfff",
    dimgray         :"#696969",
    dimgrey         :"#696969",
    dodgerblue      :"#1e90ff",
    firebrick       :"#b22222",
    floralwhite     :"#fffaf0",
    forestgreen     :"#228b22",
    fuchsia         :"#ff00ff",
    gainsboro       :"#dcdcdc",
    ghostwhite      :"#f8f8ff",
    gold            :"#ffd700",
    goldenrod       :"#daa520",
    gray            :"#808080",
    grey            :"#808080",
    green           :"#008000",
    greenyellow     :"#adff2f",
    honeydew        :"#f0fff0",
    hotpink         :"#ff69b4",
    indianred       :"#cd5c5c",
    indigo          :"#4b0082",
    ivory           :"#fffff0",
    khaki           :"#f0e68c",
    lavender        :"#e6e6fa",
    lavenderblush   :"#fff0f5",
    lawngreen       :"#7cfc00",
    lemonchiffon    :"#fffacd",
    lightblue       :"#add8e6",
    lightcoral      :"#f08080",
    lightcyan       :"#e0ffff",
    lightgoldenrodyellow  :"#fafad2",
    lightgray       :"#d3d3d3",
    lightgrey       :"#d3d3d3",
    lightgreen      :"#90ee90",
    lightpink       :"#ffb6c1",
    lightsalmon     :"#ffa07a",
    lightseagreen   :"#20b2aa",
    lightskyblue    :"#87cefa",
    lightslategray  :"#778899",
    lightslategrey  :"#778899",
    lightsteelblue  :"#b0c4de",
    lightyellow     :"#ffffe0",
    lime            :"#00ff00",
    limegreen       :"#32cd32",
    linen           :"#faf0e6",
    magenta         :"#ff00ff",
    maroon          :"#800000",
    mediumaquamarine:"#66cdaa",
    mediumblue      :"#0000cd",
    mediumorchid    :"#ba55d3",
    mediumpurple    :"#9370d8",
    mediumseagreen  :"#3cb371",
    mediumslateblue :"#7b68ee",
    mediumspringgreen   :"#00fa9a",
    mediumturquoise :"#48d1cc",
    mediumvioletred :"#c71585",
    midnightblue    :"#191970",
    mintcream       :"#f5fffa",
    mistyrose       :"#ffe4e1",
    moccasin        :"#ffe4b5",
    navajowhite     :"#ffdead",
    navy            :"#000080",
    oldlace         :"#fdf5e6",
    olive           :"#808000",
    olivedrab       :"#6b8e23",
    orange          :"#ffa500",
    orangered       :"#ff4500",
    orchid          :"#da70d6",
    palegoldenrod   :"#eee8aa",
    palegreen       :"#98fb98",
    paleturquoise   :"#afeeee",
    palevioletred   :"#d87093",
    papayawhip      :"#ffefd5",
    peachpuff       :"#ffdab9",
    peru            :"#cd853f",
    pink            :"#ffc0cb",
    plum            :"#dda0dd",
    powderblue      :"#b0e0e6",
    purple          :"#800080",
    red             :"#ff0000",
    rosybrown       :"#bc8f8f",
    royalblue       :"#4169e1",
    saddlebrown     :"#8b4513",
    salmon          :"#fa8072",
    sandybrown      :"#f4a460",
    seagreen        :"#2e8b57",
    seashell        :"#fff5ee",
    sienna          :"#a0522d",
    silver          :"#c0c0c0",
    skyblue         :"#87ceeb",
    slateblue       :"#6a5acd",
    slategray       :"#708090",
    slategrey       :"#708090",
    snow            :"#fffafa",
    springgreen     :"#00ff7f",
    steelblue       :"#4682b4",
    tan             :"#d2b48c",
    teal            :"#008080",
    thistle         :"#d8bfd8",
    tomato          :"#ff6347",
    turquoise       :"#40e0d0",
    violet          :"#ee82ee",
    wheat           :"#f5deb3",
    white           :"#ffffff",
    whitesmoke      :"#f5f5f5",
    yellow          :"#ffff00",
    yellowgreen     :"#9acd32",
};
```

## Parse CCS Color
```javascript
function parseCSSColor(css_str) {
  var str = css_str.replace(/ /g, '').toLowerCase();
// Color keywords (and transparent) lookup.
  if (str in RGBaColorTable) return RGBaColorTable[str].slice();
// #abc and #abc123 syntax.
  if (str[0] === '#') {
    if (str.length === 4) {
      var iv = parseInt(str.substr(1), 16);
      if (!(iv >= 0 && iv <= 0xfff)) return null;  // Covers NaN.
      return [((iv & 0xf00) >> 4) | ((iv & 0xf00) >> 8),
              (iv & 0xf0) | ((iv & 0xf0) >> 4),
              (iv & 0xf) | ((iv & 0xf) << 4),
              1];
    } else if (str.length === 7) {
      var iv = parseInt(str.substr(1), 16);
      if (!(iv >= 0 && iv <= 0xffffff)) return null;  // Covers NaN.
      return [(iv & 0xff0000) >> 16,
              (iv & 0xff00) >> 8,
              iv & 0xff,
              1];
    }
    return null;
  }
  var op = str.indexOf('('), ep = str.indexOf(')');
  if (op !== -1 && ep + 1 === str.length) {
    var fname = str.substr(0, op);
    var params = str.substr(op+1, ep-(op+1)).split(',');
    var alpha = 1;  // To allow case fallthrough.
    switch (fname) {
      case 'rgba':
        if (params.length !== 4) return null;
        alpha = parse_css_float(params.pop());
        // Fall through.
      case 'rgb':
        if (params.length !== 3) return null;
        return [parse_css_int(params[0]),
                parse_css_int(params[1]),
                parse_css_int(params[2]),
                alpha];
      case 'hsla':
        if (params.length !== 4) return null;
        alpha = parse_css_float(params.pop());
        // Fall through.
      case 'hsl':
        if (params.length !== 3) return null;
        var h = (((parseFloat(params[0]) % 360) + 360) % 360) / 360;  // 0 .. 1
        // NOTE(deanm): According to the CSS spec s/l should only be
        // percentages, but we don't bother and let float or percentage.
        var s = parse_css_float(params[1]);
        var l = parse_css_float(params[2]);
        var m2 = l <= 0.5 ? l * (s + 1) : l + s - l * s;
        var m1 = l * 2 - m2;
        return [clamp_css_byte(css_hue_to_rgb(m1, m2, h+1/3) * 255),
                clamp_css_byte(css_hue_to_rgb(m1, m2, h) * 255),
                clamp_css_byte(css_hue_to_rgb(m1, m2, h-1/3) * 255),
                alpha];
      default:
        return null;
    }
  }

  return null;
}
```

