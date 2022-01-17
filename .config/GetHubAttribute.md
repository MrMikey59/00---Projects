# GitHub Attirbutes Declaration File

## Common .githubattribute
```text
# Set default behaviour, in case users don't have core.autocrlf set.
* text=auto

# Explicitly declare text files we want to always be normalized and converted
# to native line endings on checkout.
*.md text
*.json.br filter=lfs diff=lfs merge=lfs -text

# Force batch scripts to always use CRLF line endings so that if a repo is accessed
# in Windows via a file share from Linux, the scripts will work.
*.{cmd,[cC][mM][dD]} text eol=crlf
*.{bat,[bB][aA][tT]} text eol=crlf

# Force bash scripts to always use LF line endings so that if a repo is accessed
# in Unix via a file share from Windows, the scripts will work.
*.sh text eol=lf

###############################
# Git Large File System (LFS) #
###############################

# Archives
*.7z filter=lfs diff=lfs merge=lfs -text
*.br filter=lfs diff=lfs merge=lfs -text
*.gz filter=lfs diff=lfs merge=lfs -text
*.json filter=lfs diff=lfs merge=lfs -text
*.tar filter=lfs diff=lfs merge=lfs -text
*.zip filter=lfs diff=lfs merge=lfs -text

# Configuration Files
*.cfg text
*.ini text
*.log text
*.theme text
*.xml text
*.{yml, yaml} text

# Documents
*.epub binary
*.docx binary
*.fb2 text
*.md text
*.pdf filter=lfs diff=lfs merge=lfs -text
*.rst text
*.txt text

# Images
*.gif filter=lfs diff=lfs merge=lfs -text
*.{ico, icon} filter=lfs diff=lfs merge=lfs -text
*.{jpeg, jpg} filter=lfs diff=lfs merge=lfs -text
*.png filter=lfs diff=lfs merge=lfs -text
*.psd filter=lfs diff=lfs merge=lfs -text
*.webp filter=lfs diff=lfs merge=lfs -text

# Fonts
*.woff2 filter=lfs diff=lfs merge=lfs -text

# OS Executables
*.{bat,[bB][aA][tT]} text eol=crlf
*.{cmd,[cC][mM][dD]} text eol=crlf
*.exe filter=lfs diff=lfs merge=lfs -text
*.sh      text eol=crlf

# Script Languages
*.coffee  text
*.js      text
*.{[}py, pyj}  text diff=python
*.recipe  text diff=python  

# Web Development
*.css     text
*.htm     text
*.html    text
*.mht     text
*.svg     text
*.xhtml   text
*.xml     text
*.xsl     text
```

## More GHA Examples
```text
# Tell git what files are txt
*.pot     text
*.po      text
*.session text
*.cfg     text
*.tmpl    text
*.qrc     text

# Tell git what files are binary
*.pickle  binary

# Prevent certain files from being exported:
.gitattributes  export-ignore
.gitignore      export-ignore

# Mark vendored files
resources/mathjax/* linguist-vendored=true
resources/coffee-script.js linguist-vendored=true
resources/csscolorparser.js linguist-vendored=true
resources/viewer/hyphen* linguist-vendored=true
resources/viewer/jquery* linguist-vendored=true
src/hunspell linguist-vendored=true

# Mark generated files
resources/content-server/index-generated.html linguist-generated=true
resources/editor.js linguist-generated=true
resources/viewer.js linguist-generated=true
resources/viewer.html linguist-generated=true

# GitHub linguist ignores markdown files by default, but TL;DR-pages
# are mostly markdown, so we explicitly make the pages detectable
pages*/**/*.md linguist-detectable=true
pages*/**/*.md linguist-documentation=false

*.py diff=python

.gitattributes export-ignore
.gitmodules export-ignore
.gitignore export-ignore

```

