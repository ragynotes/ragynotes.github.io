---
title: "Site development"
date: 2021-11-20T01:51:37-05:00
lastmod: 2021-11-20T01:51:37-05:00
---

Information for people involved maintaining this website.

Consider this an incomplete work in progress. 

## how the site runs

- hugo
- github
- github pages
- github issues

## set up local development environment

clone repo to local machine

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













































