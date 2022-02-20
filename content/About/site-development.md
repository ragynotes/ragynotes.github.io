---
title: "Site development"
date: 2021-11-20T01:51:37-05:00
lastmod: 2021-11-20T01:51:37-05:00
---












#### building site to deploy

delete previous `docs/` to avoid problems, then build site to the docs folder (from where it is published)

if you do not have `trash-cli` installed locally, change to `rm -r` or whatever you do to delete stuff 

```sh
trash docs && hugo
```

then push back to github

## finding and creating the content

- Instructive: [How to OCR or re OCR PDFs or create PDFs · Issue #9](https://github.com/ragynotes/ragynotes.github.io/issues/9)

## adding and editing content

### markdown

- do not open these markdown files in typora or other wyswyg editor as it screws them up.

### create page 

- use `hugo new` for generic

```bash
hugo new About/site-development.md
```

#### create page with special document template

uses archetypes ([docs](https://gohugo.io/content-management/archetypes/)) to create the entire folder required

```sh
hugo new --kind document content/Collected-Documents/document-title
```

- the folder "JunkPages" is never built with the site, so use for experiments [is this true?]
- archetype is defined in `ragynotes.github.io/archetypes/document`

#### obtaining files from zotero

This ought to be faster: [make zotero do most of the work generating the page components · Issue #19](https://github.com/ragynotes/ragynotes.github.io/issues/19)

![export-item-contextual](images/export-item-contextual.png)

![export-bibtex-dialogue](images/export-bibtex-dialogue.png)

this produced:

```sh
├── bib.bib
└── files
    ├── 792
    │   └── proceedingsofame4318amer_0860.jpg
    ├── 793
    │   └── proceedingsofame4318amer_0860-pg822.pdf
    └── 794
        └── 1895americanpharmaceuticalassociation.meeting.txt
```

remove files and rename them per template convention

### `YAML`

[How do you do block comments in YAML?](https://stackoverflow.com/questions/2276572/how-do-you-do-block-comments-in-yaml): has this [interesting approach](https://stackoverflow.com/a/50037498)

### images

see [instructions at theme repo](https://github.com/frjo/hugo-theme-zen#figure-and-img)

## templates

making changes to theme, must read: [add zen theme as submodule · Issue #11](https://github.com/ragynotes/ragynotes.github.io/issues/11)











































