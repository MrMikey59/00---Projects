# CSS Selectors

- [W3School’s CSS Selector]( https://www.w3schools.com/cssref/css_selectors.asp)

CSS uses HTML/SGML commenting like: `/* comment */`

#### Operators in CSS
| Operator | Description |  
| --- | --- |  
| = | Equal |
| != | Not equal |  
| \|= <BR> ^= | Starts with |  
| $= | Ends with |  
| *= <BR> ~= | contains the substring in the attribute |  
| : |  Key-Value Pair separator |  
| :: | Insert |  

#### Browser Conditional Checks
|  Key Check | Comment Embedded Code |  
| --- | --- | 
| IE 7 |`<!--[if IE 7]>` <BR> `<![endif]-->`|  
| IE 8 |`<!--[if IE 8]>` <BR> `<![endif]-->`|  
| IE 9 |`<!--[if IE 9]>` <BR> `<![endif]-->`|  

## CSS2

| Selector | Description |  
| --- | --- |  
| * | All Elements |  
| Element <BR> (Single Element) | \<Element> - specific to the element in the selector. |  
| Element * <BR> (Descendant) | All elements within \<Element> |  
| Element1 Element2 <BR> (Descendant) | All \<Element2> within \<Element1> |  
| Element1, Element2 <BR> (List) | A list of applicaple individual elements |  
| Element1 > Element2 <BR> (Parent-Child) | Any \<Element2> with parent  \<Element1> |  
| Element1 + Element2 <BR> (Adjacent) | Any \<Element2> preceded by \<Element1> |  
| .aclass <BR> (Class) | Any Element with Class attribute that includes "aclass" |  
| Element1.aclass <BR> (Class-Combination) | Any \<Element> with Class attribute that includes "aclass" |  
| #anID <BR> (ID) | Any element with the ID attribute set to "anID" |  
| Element#anID <BR> (ID-Combintion) | Any \<Element> with the ID attribute set to "anID" |  
| Element[attr] <BR> (Attribute) | Any \<Element> with an attributr of attr |  
| Element[attr="x"] <BR> (Attribute) | Any \<Element> with an attributr of attr that equals "x" |  
| Element[class="X"] <BR> (Class) | Any \<Element> with an attributr of class that equals "x"  |  
| Element[lang\|="en"] <BR> (Class) | Any \<Element> with an attributr of lang that starts with "en" |  
| Element:PseudoSel | Any Element that meets the PseudoSel criteria |  

**NOTE**: ID can only be used in one Element in one position within a document.  The ID is programatically limited so that only one will be found.

**Note**: The primary selectors listed aboce can also be combined but be aware of the effects!

## Pseudo Selectors
| Selector | Description | Example |  
| --- | --- | --- |  
| :active | active element |  |  
| :after | after element |  |  
| :before  | before element |  |   
| :checked  |  |  |   
| :disabled  |  |  |   
| :enabled  |  |  |   
| :first-child  | first child element |  |   
| :first-letter  | first letter of element |  |   
| :first-line  | first line of element |  |   
| :focus  | Element with focus |  |   
| :hover  | Elemnt with mouse over |  |   
| :lang(var) | Element with language "var" |   
| :link  | Unvisited links |  |   
| :not(<Selector>)  |  |  |   
| :nth-of-type(\<IndexNumber> \| even \| odd)  |  | `#table1 .col:nth-child(even)` |   
| :visited | Visited links |  |  |  

