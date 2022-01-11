# kallipos version of pibook

The workflow (source files, pandoc filters) for kallipos
brings together several submodules and builds the content of
the markdown version of the book into the `text` folder.

## Source files preprocessing

The source files in the `text` folder are formated with 
custom tags for figures, epigraphs, and include files. The
custom tags are translated with lua filters to the desired
standard output format (e.g., latex, html, docx), with pandoc.

```
pandoc --lua-filter=extras.lua text/mi-ch02.md --to markdown | pandoc --lua-filter=epigraph.lua --to markdown | pandoc --lua-filter=figure.lua --to markdown | less
```

Some of the include files provide cross-references to figures
and to bibliography and should be processed last.
