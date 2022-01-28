# SVG: Scalable Vector Graphics

This folder contains SVG notes, snippets and example code

#### Attributes
| Attribute |  |  
| ---| --- |  
| aria-label | label to support readers |  
| class | the CSS class |  
| color | color assignment |  
| cx <BR> cy | circle center (X,Y) coordinates |  
| r | radius |  
| stroke-linecap |  |  
| viewBox |  |  

## SVG The Container
```svg
<svg 
  aria-label="Loading" 
  viewBox="0 0 64 64" 
  class="sc-dlfnbm ktLGbV"
>  </svg>
```

## Circle
```svg
<circle cx="32" cy="32" r="32" class="sc-hKgILt dFKJAk"></circle>
<circle color="light" cx="32" cy="32" r="32" stroke-linecap="round" class="sc-eCssSg kRaCnm"></circle>
```

## DESC - The Description
```svg
<DESC>Item Name or Description</DESC>
```

## Polygon
```svg
<POLYGON 
  fill="blue"
  stroke="blue"
  stroke-width="10" 
  points="350,75  379,161 469,161 397,215 423,301 350,250 277,301 303,215 231,161 321,161"
 />
```
  
## Examples

#### Blue Star
```svg
<SVG width="12cm" height="4cm" viewBox="0 0 1200 400"
     xmlns="http://www.w3.org/2000/svg" version="1.1">
  <DESC>Blue Star</DESC>
  <POLYGON 
      fill="blue" stroke="blue" stroke-width="10" 
      points="350,75  379,161 469,161 397,215 423,301 
              350,250 277,301 303,215 231,161 321,161" />
</SVG>
```

