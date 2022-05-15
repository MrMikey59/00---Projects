# Markdown
 ![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")
 ### Guides
- [GitHub Flavored Markdown Spec](https://github.github.com/gfm/) - GitHub's Special Markdown Guide.
- [John Gruber’s Markdown documentation](https://daringfireball.net/projects/markdown/) - The original guide written by the creator of Markdown. 
- [Markdown Tutorial](https://www.markdowntutorial.com/) - An open source website that allows you to try Markdown in your web browser.
- [Markdown Guide](https://www.markdownguide.org/) 

## Inspirations 
- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
- https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf
- https://www.markdownguide.org/cheat-sheet/
- https://stackedit.io/app#  
- [MermaidJS](https://mermaid-js.github.io/) is a tool that renders diagrams based on markdown-like text content. It helps us visualize documentation and catch it up with development by dynamically creating and modifying diagrams in the browser. Mermaid supports various types of diagrams, such as UML diagrams, Gantt charts, Git Graphs, and User Journey Diagrams.
```mermaid
```
  - [Mermaid's Documentation](https://mermaid-js.github.io/) 

## Common Markdown Language Railroad Diagrams
| Markdown | Railroad Diagram |
| :--- | :--- |
| Abbreviations | ```[SMTP]: Simple Mail Transfer Protocol - The SMTP is a communication protocol for email transmission.``` | 
| Bold | ```__<Text>__``` <br> ```**<Text>**``` <br> (uses double underscore or asterisk as a delimiter) | 
| Bold with Italics | ```___<Text>___``` <br> ```***<Text>***``` <br> (uses triple underscore or asterisk as a delimiter) | 
| Block Quote | ```> <Text>```  <br> These blocks can be nested up to two deep. | 
| Block Quote, in Italics | ```>> <Text>```  <br> These blocks can be nested up to two deep.  | 
| Code Block <br> (Inline using apostrophes) | ``` `<CodeText>` ``` <BR> ``` ``<CodeText>`` ``` | 
| Code Block <br> (Multiline using apostrophes) | ` ```[<CodeType>] ` <br> `<CodeText> ` <br> ` ``` ` <br> To add syntax highlighting, specify a language (Code Type) next to the top set of backticks before the fenced code block. <br> Types include: sh, markdown json, xml, html, javascript, vbscript | 
| Definition Lists  <br> (AKA: Key-Value(s) Pair) | ` <Key>: <Value> ` <br> ` <Key2>:<Value2> ` <br> ` : <AdditionalValue2> ` | 
| Email Link |`<<Name>*@<MailBox>>` | 
| Footnote | `Here's a sentence with a footnote reference. [^1]` <br> Then some where below: <br> `[^1]: This is the footnote.`| 
| Header 1 | `# <Text> \[{#<HeaderID>}] `| 
| Header 2 | `## <Text>\[{#<HeaderID>}]` | 
| Header 3 | `### <Text>\[{#<HeaderID>}]` | 
| Header 4 | `#### <Text>\[{#<HeaderID>}]` | 
| Header 5 | `##### <Text>\[{#<HeaderID>}]` | 
| Header 6 | `###### <Text>\[{#<HeaderID>}]` | 
| Highlight | `==<Text>== `| 
| Horizontal Rule (AKA Lines) | `---` <br> `___` <br> Must use at least three consecutive dash or underscore characters with nothing else on the line. | 
| Ignore Point | `[//]: ` | 
| Images (Inline) | `![<AltText>](<ImageURL>"<Title>"] ` <br> The Title is optional. | 
| Images (Reference) | `!\[<AltText>]\[<ImageID>]` | 
| Italics | ` _<Text>_  ` <br> `*<Text>* ` <br> uses single underscore or asterisk as a delimiter | 
| Links (Inline) | `[<LinkText>](<LinkURL>)  ` <br> `My favorite search engine is [Duck Duck Go](https://duckduckgo.com). ` <br> `I love supporting the [EFF](https://eff.org).` <br> See the section on ``[<HeaderName>](#<HeaderLocationID>)``. (to a link in the page) | 
| Links (Reference) | `[<LinkText>] `| 
| List Items | `- <Text>  ` <br> `* <Text>  ` <br> `+ <Text>  ` <br> `1. <Text>  ` <br>  (Indent for nested lists four spaces or one tab.) Numerals are used for ordered lists and others are for unordered lists.  <br> Note: If you need to start an unordered list item with a number followed by a period, you can use a backslash (\) to [escape](https://www.markdownguide.org/basic-syntax/#escaping-characters) the period.  <br> To create a task list, add dashes (-) and brackets with a space (\[ ]) in front of task list items. To select a checkbox, add an xin between the brackets (\[x]). | 
| References for Images | `[<ImageID>] <ImageURL>"<Title>"  ` <br> The Title is optional. | 
| References for Links | `[<LinkText>]: <<LinkURL>> ` | 
| Strikethrough | `~~<Text>~~ `| 
| Subscript | `~<Text>~` | 
| Superscript | `^<Text>^` | 
  
**Notes:**
-  Setting a header automatically creates a link to the location. Headers can also have IDs added :  {#<HeaderID>}
-  If a backtick is required in the <Text>, use two for the delimiter.
-  To create a line break (<br>), end a line with two or more spaces, and then type return.
-  Code blocks are normally indented four spaces or one tab. When they’re in a list, indent them eight spaces or two tabs.
-  To quickly turn a URL or email address into a link, enclose it in angle brackets.
-  Hyperlinks within text are automatically linked. If you don’t want a URL to be automatically linked, you can remove the link by denoting the URL as code with backticks.

## Lists
- Unordered lists use * for list beginning and white space nesting for nesting such as:
  - Sub list  
    - Sub list  
      - Sub list
        - Sub list 

- Ordered lists use 1 for list beginning and white space nesting for nesting such as:
  1. Sub list  
     1. Sub list  
     2. Sub list
  2. Sub list
     1. Sub list 
     2. Sub list

## Links
- Quick Link (Inline): `[Google](https://www.google.com)`  
- Quick Link (Same Directory):	`[CONTRIBUTING.md](CONTRIBUTING.md)`  

## Images
- Images are converted to png/jpg and linked as local image files.
- Every image is stored in the same folder as its page.
- Inline-style: `![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")`


### Center an Image
Here are three ways to get that image centered!
```html
<p align="center">  <img src=<ImageURL> /></p>
<div style="text-align:center"><img src=<ImageURL> /></div>
<span style="display:block;text-align:center">![Your Image Alt Text] <ImageURL>)</span>
```

## Tables
- Tables are supported through GFM.
- Tables can contain rich text.
- Lists within tables are not supported.
- Sample table :

To add a table, use three or more hyphens (---) to create each column’s header, and use pipes (\|) to separate each column. For compatibility, you should also add a pipe on either end of the row.  
```markdown
| Syntax      | Description |   
| ----------- | ----------- |  
| Header      | Title       |  
| Paragraph   | Text        |  
```

Cell widths can vary, as shown below. The rendered output will look the same.  
```markdown
| **Syntax** | **Description** | 
| ----       | -----------     |
| Header     | Title           |  
| Paragraph  | Text            | 
```
**Tip:** Creating tables with hyphens and pipes can be tedious. To speed up the process, try using the [Markdown Tables Generator](https://www.tablesgenerator.com/markdown_tables). Build a table using the graphical interface, and then copy the generated Markdown-formatted text into your file.  

The rendered output looks like this:  

| **Syntax** | **Description** | 
| :--- | :--- |
| Header | Title | 
| Paragraph | Text | 


| Tables | Are| Cool |
| - | :-: | -: |
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      | aaaa |

#### Alignment  
You can align text in the columns to the left, right, or center by adding a colon (:) to the left, right, or on both side of the hyphens within the header row.  
```markdown
  | **Syntax**  | **Description** | **Test Text** |  
  | :---        |    :----:       |          ---: |  
  | Header      | Title           | Here's this   |  
  | Paragraph   | Text            | And more      |  
```

The rendered output looks like this:  
| **Syntax** | **Description** | **Test Text** | 
| :--- | :---: | ---: |
| Header | Title | Here’s this | 
| Paragraph | Text | And more | 
  
You can display a pipe (**\|**) character in a table by using its HTML character code ( **&amp;#124;**).  


## Create a table of file information.
```
---
layout: lecture
title: "Virtual Machines and Containers"
presenter: Anish, Jon
video:
  aspect: 56.25
  id: LJ9ki5zq6Ik
---
```
*Note*: This must start on the first line of the file for it to work.

## HTML
- Html can be embedded within md.

## Horizontal rule
---

## Videos
```html
<a href="http://www.youtube.com/watch?feature=player_embedded&v=YOUTUBE_VIDEO_ID_HERE
" target="_blank"><img src="http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
```

## Task lists
- Converted to md as: 
  - [ ] Task 1
  - [x] Task 2 completed

## Tag
- Converted using emojis such as :+1:

## Attachments
- Linked in place

[example-attachment.pdf](Doc/example-attachment.pdf)

# Roadmap
- Support handwriting, drawing etc as image export.

## Use doctoc to create your Table of Contents  
- [doctoc Install](https://github.com/thlorenz/doctoc)

Adding toc to all files in a directory and sub directories  
Go into the directory that contains you local git project and use one of the following calls to doctoc:
```bash
doctoc .
doctoc <PathFilename>.md [ <PathFilename2>.md]... 
```

This will update all markdown files in the current directory and all its subdirectories with a table of content that will point at the anchors generated by the markdown parser. Doctoc defaults to using the GitHub parser, but other modes can be specified.

Include the following in the Markdown file to hold the results:
```
## Table of Contents

<!-- prettier-ignore-start -->

<!-- START doctoc -->
<!-- END doctoc -->

<!-- prettier-ignore-end -->
```

#### Usage a `git` hook

doctoc can be used as a [pre-commit](http://pre-commit.com) hook by using the following configuration:

```yaml
repos:
-   repo: https://github.com/thlorenz/doctoc
    rev: ...  # substitute a tagged version
    hooks:
    -   id: doctoc
```

This will run `doctoc` against markdown files when committing to ensure the TOC stays up-to-date.

