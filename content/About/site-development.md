---
title: "Site development"
date: 2021-11-20T01:51:37-05:00
lastmod: 2021-11-20T01:51:37-05:00
---

Information for people involved maintaining this website.

Consider this an incomplete work in progress. ([contrib/development information · Issue #10](https://github.com/ragynotes/ragynotes.github.io/issues/10))

## how the site runs

- hugo
- github
- github pages
- github issues

## set up local development environment

clone repo to local machine

```sh
git clone https://github.com/ragynotes/ragynotes.github.io.git
```

### differences between fresh clone and my local environment

- currently this does not include submodule for the theme so site will not build correctly ([add zen theme as submodule · Issue #11](https://github.com/ragynotes/ragynotes.github.io/issues/11))
- all `pdf`s have been added to `.gitignore` to prevent file size issues; this will have to be addressed properly later on ([large files (pdfs) · Issue #12](https://github.com/ragynotes/ragynotes.github.io/issues/12))
- I have not yet completed information on how to mirror the zotero set up in such a way that anyone but myself can really do this ([create consistent workflow for moving items from zotero to hugo · Issue #8](https://github.com/ragynotes/ragynotes.github.io/issues/8))

### hugo

....

set up a testing server to run locally

```sh
hugo serve
```

build site to the docs folder:

```sh
hugo
```

then push back to github

## finding and creating the content

- Instructive: [How to OCR or re OCR PDFs or create PDFs · Issue #9](https://github.com/ragynotes/ragynotes.github.io/issues/9)

## adding and editing content

### markdown

- do not open these markdown files in typora or other wyswyg editor as it screws them up.

### create page 

- use `hugo new` for generic

```bash
hugo new About/site-development.md
```

- use `hugo new document` for documents
  - this will use archetypes ([docs](https://gohugo.io/content-management/archetypes/)) to create the entire folder required

### `YAML`

[How do you do block comments in YAML?](https://stackoverflow.com/questions/2276572/how-do-you-do-block-comments-in-yaml): has this [interesting approach](https://stackoverflow.com/a/50037498)

## templates













































