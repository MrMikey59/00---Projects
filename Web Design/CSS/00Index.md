# CSS: Cascade Style Sheets

This folder contains CSS notes, snippets and example code.

- [CCS Object Model (CSSOM)](https://drafts.csswg.org/cssom/) 
- [Less](http://lesscss.org/) (Run `npm install -g less` to install).
  - [Less Plugin: Clean CSS](https://github.com/less/less-plugin-clean-css)  
  (Run `npm install -g less-plugin-clean-css` to install).
- SASS
- SCSS

CSS seems deceptively straightforward, but there are many challenges when trying to style an app perfectly for all browsers and all screen sizes. CSS-Grid and Flexbox are tools that have been developed to make the job a little more structured and more reliable. Learn about these tools by playing [Flexbox Froggy](https://flexboxfroggy.com/) and [Grid Garden](https://codepip.com/games/grid-garden/).

CSS is a container of Rules that modify the browser display of elements.

The Rule: Each rule has exactly two parts:

-	a selector that defines the HTML element(s) to which the rule applies
-	a collection of one or more properties, which describes the appearance of all elements in the document that match the selector.

**Note**: An HTML element can belong to multiple classes if you wish, simply by listing the classes (separated by spaces) in the class attribute. 

**Note**: Element IDs are required to be unique and for a single instance.

#### CSS Conventions
- [CSS property order](http://markdotto.com/2011/11/29/css-property-order/)  
- Multiple-line approach (one property and value per line)  
- Always a space after a property's colon  
- End all lines with a semi-colon  
- For multiple, comma-separated selectors, place each selector on its own line  
- Attribute selectors, like `input[type="text"]` should always wrap the attribute's value in double quote  
- Organiztion (in alphabetical order with Comments to mark sections!)
    ```css
    /* Resets */
    /* Anchors */
    /* Containers */
    /* IDs for Containers */
    /* IDs for Forms */
    /* IDs for Tables */  
    /* Specialty IDs */
    /* Classes for Containers */
    /* Classes for Forms */
    /* Classes for Tables */
    /* Specialty Classes */
    ```
  - Any Resets.
  - Standard Element Selectors
  - #ID Selectors (only used once!)
  - .Class Selectors

#### CSS Implementation
Style can be implemented in three ways: Internal, Inline and External.
All the styles in a page will "cascade" into a new "virtual" style sheet by the following rules, where number one has the highest priority:

  1. Inline style (inside an HTML element)
  2. External and internal style sheets (in the head section)
  3. Browser default


###### Internal (Anywhere in document)
```css
<style type="text/css">
<CSSRules>
</style>
```

###### In Line
```css
<<ElementName> style=<RuleList>>
```

###### External (In head Section only)
```css
<link href="<FilePathName>" rel="stylesheet" type="text/css" />
```

#### CSS Rules

CSS Rule for a Paragraph![CSS P Rule](https://github.com/MrMikey59/00---Projects/blob/master/CSS/CSS%20Rule%20Example.png)
```css
<STYLE type="text/css"> 
p {
  font-weight: bold;
  color: blue; 
}
</STYLE>
```

#### Selector Format
```css
<ElementName>
<ElementName>.<ClassName>
.<ClassName>
#<IdentificationName>
```

#### The Box Model
The Box![The CSS Box Model](CSS%20Box%20Model.png)   
The CSS2 Box![CSS2 Box](CSS2%20Box%20Model.png)  
**Note**: The visible width of the box is determined by adding together the content width, the padding and the border.

## The Attribute Roadmaps
| Attribut Roadmap | Examples
| --- | --- |  
| `align-items: [ center ];` | --- |  
| `display: [ block | flex ];` | --- |  
| `font-family: [ Arial ];` | --- |  
| `justify-content: [ center ];` | --- |  
| `position: [ absolute | relative ];` | --- |  
| `text-decoration: [ none ];` | --- |  

## Adapting to Media Size
```html
/*  Mobile  */
@media screen (max-width: 767px) {
  <Adaptive CSS Script>
}
/*  Tablet  */
@media screen and (min-width: 768px) and (max-width: 1199px) {
  <Adaptive CSS Script>
}
/*  Tablet and Laptop/Desktop  */
@media screen and (min-width: 768px) {
  <Adaptive CSS Script>
}
/*   Laptop/Desktop  */
@media screen and (min-width: 1200px) {
}
```

## CSS Examples

#### Drop Cap a Leading Paragraph
```css
P:first-letter {
  font-size: 150%;
}
```

#### Make Borders Bold, Dotted and Purple
```css
.bolddottedborder {
  border-width: 10px;
  border-style: dotted;
  border-color: purple;
}
```

#### Header 1 Reset
```css
H1 {
  font-size: x-large;
  background-color: navy;
  color: white;
  padding-top: 2em;
  padding-bottom: .2em;
  padding-left: .4em;
}
```

## Examples

#### Circles CSS Example

-	[Circles CSS Example.html](https://github.com/MrMikey59/00---Projects/blob/master/CSS/Circles/Circles%20CSS%20Example.html)
-	[Circles.css](https://github.com/MrMikey59/00---Projects/blob/master/CSS/Circles/css/circle.css)

A CSS package for creating circle representations with percentages of completion.

