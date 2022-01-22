# CSS Selectors

## CSS2

| Selector | Description |  
| --- | --- |  
| * | All Elements |  
| Element | \<Element> - specific to the element in the selector. |  
| Element * | All elements within \<Element> |  
| Element1 Element2 <BR> (Descendant) | All \<Element2> within \<Element1> |  
| Element1, Element2 <BR> (List) | A list of applicaple individual elements |  
| Element1 > Element2 <BR> (Within) | Any \<Element2> with parent  \<Element1> |  
| Element1 + Element2 <BR> (Adjacent) | Any \<Element2> preceded by \<Element1> |  
| .aclass <BR> (Class) | Any Element with Class attribute that includes "aclass" |  
| Element1.aclass <BR> (Class-Combination) | Any \<Element> with Class attribute that includes "aclass" |  
| #anID <BR> (ID) | Any element with the ID attribute set to "anID" |  
| Element#anID <BR> (ID-Combintion) | Any \<Element> with the ID attribute set to "anID" |  
| Element[attr] <BR> (Attribute) | Any \<Element> with an attributr of attr |  
| Element[attr="x"] <BR> (Attribute) | Any \<Element> with an attributr of attr that equals "x" |  
| Element[class="X"] <BR> (Class) | Any \<Element> with an attributr of class that equals "x"  |  
| Element[lang\|="en"] <BR> (Class) | Any \<Element> with an attributr of lang that starts with "en" |  

**NOTE**: ID can only be used in one Element in one position within a document.  The ID is programatically limited so that only one will be found.

### CSS Selectors
| Selector | Description | Example |  
| --- | --- | --- | 
| At Character Set  |  | `@charset "ISO-8859-1";` |  
| Combinations |  | `H1.ClassName, P SPAN` |
| Comments |  | `/* <Message> */` |  
| Element with Pseudo-Element/Psuedo-Class |  | `P:first-line` |
| ID |  | `#ElementID` |
| List of Elements | comma separated list | `H1, H2, H3` |
| Parent-Child |  | `BODY > P` |
| Single Element |  | `H1` |
| Universal |  | `*` |

## Pseudo Selectors
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