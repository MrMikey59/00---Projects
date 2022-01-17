# CSS: Cascade Style Sheets

This folder contains CSS notes, snippets and example code.

CSS seems deceptively straightforward, but there are many challenges when trying to style an app perfectly for all browsers and all screen sizes. CSS-Grid and Flexbox are tools that have been developed to make the job a little more structured and more reliable. Learn about these tools by playing [Flexbox Froggy](https://flexboxfroggy.com/) and [Grid Garden](https://codepip.com/games/grid-garden/).

CSS is a container of Rules that modify the browser display of elements.

The Rule: Each rule has exactly two parts:

-	a selector that defines the HTML element(s) to which the rule applies
-	a collection of one or more properties, which describes the appearance of all elements in the document that match the selector.

**Note**: An HTML element can belong to multiple classes if you wish, simply by listing the classes (separated by spaces) in the class attribute. 

**Note**: Element IDs are required to be unique and for a single instance.

#### CSS Implementation
Style can be implemented in three ways: Internal, Inline and External.

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
The Box![The CSS Box Model](https://github.com/MrMikey59/00---Projects/blob/master/CSS/CSS%20Box%20Model.png)  
**Note**: The visible width of the box is determined by adding together the content width, the padding and the border.

## CSS Constants
|Constants|Description|Value|Type |
| --- | --- | --- | --- |  
| dashed|||border-style |
| dotted|||border-style |
| double|||border-style |
| groove|||border-style |
| hidden|||border-style |
| inset|||border-style |
| none|||border-style |
| display |
| text decoration |
| outset|||border-style |
| ridge|||border-style |
| solid|Default||border-style |
| block|override for inline elements||display |
| inline|override for block elements||display |
| list-item|||display |
| table-footer-group|||display |
| table-header-group|||display |
| large |||font size |
| medium |||font size |
| small |||font size |
| x-large |||font size |
| x-small |||font size |
| xx-large|||font size |
| xx-small |||font size |
| italic|||font style |
| normal|||font style |
| font weight |
| bold|||font weight |
| circle|||list-style-type |
| disc|||list-style-type |
| none|||list-style-type |
| square|||list-style-type |
| absolute|||position |
| relative|||position |
| 999%|percentage||size |
| 999em|||size |
| 999ex|||size |
| 999pt|points||size |
| 999px|pixels||size |
| line-through|||text decoration |
| overline|||text decoration |
| underline|||text decoration |
| lowercase|||text-transform |
| uppercase|||text-transform |

## CSS Selectors
| Selector | Description | Example |  
| --- | --- | --- | 
| Adjacent |  | `P + H3` |
| At Character Set  |  | `@charset "ISO-8859-1";` |  
| Attribute |  | `INPUT[type="text"]` |
| Class |  | `.ClassName` |
| Combinations |  | `H1.ClassName, P SPAN` |
| Comments |  | `/* <Message> */` |  
| Descendant |  | `P SPAN` |
| Element with Pseudo-Element/Psuedo-Class |  | `P:first-line` |
| ID |  | `#ElementID` |
| List of Elements | comma separated list | `H1, H2, H3` |
| Parent-Child |  | `BODY > P` |
| Single Element |  | `H1` |
| Universal |  | `*` |

### Pseudo Selectors
| Selector | Description | Example |  
| --- | --- | --- |  
| :active |  |  |  
| :after |  |  |  
| :before  |  |  |   
| :checked  |  |  |   
| :disabled  |  |  |   
| :enabled  |  |  |   
| :first-child  |  |  |   
| :first-letter  |  |  |   
| :first-line  |  |  |   
| :focus  |  |  |   
| :hover  |  |  |   
| :link  |  |  |   
| :not(<Selector>)  |  |  |   
| :nth-of-type(\<IndexNumber> \| even \| odd)  |  | `#table1 .col:nth-child(even)` |   
| :visited |  |  |  |  

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

#### Simple.css

| Area | List | 
| -- | -- |  
| GENERAL | .centered  <BR> .clearall <BR> .floatleft <BR> .floatright <BR> .hidden <BR> .middle  |  
| Background Color | .black  <BR> .white  <BR> .red  <BR> .green  <BR> .blue  |  
| Borders | .rounded-corners <BR> .shadow |  
| Margins & Padding | .margins0 <BR> .margins5 <BR> .padding0 <BR> .padding5 |  
| Text Color | .blacktext  <BR> .whitetext  <BR> .redtext  <BR> .greentext  <BR> .bluetext |  
| Text Style | .lowercase <BR> .uppercase <BR> .monospace <BR> .textcenter  <BR> .textitalic <BR> .textleft  <BR> .textright  <BR> .textstrong |  
| Vertical Alignment | .vabottom <BR> .vamiddle <BR> .vatop |  

