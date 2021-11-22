---
title: {{title}}
title-short: {{shortTitle}}
originalyear: {{date}}
type: {{itemType}}

tags:
 - mdnotes
 {{tags}}
 
alias: {{citekey}}
lang: {{language}}

draft: true

date: {{accessDate}}
---

## ❗ Document TODO

`[filename]` in the below should be consistent filename for document. otherwise, keep filenames as indicated.

- [ ] find all 	`❗` in this page and fill the information. delete when done
- [ ] in folder with `index.md`, fill:
  - [ ] `bibliography.yaml`		(create with zotero)
  - [ ] `bibliography.bib` 		(create with zotero)
  - [ ] `bibliography.json` 	(create with zotero)
  - [ ] `commentary.md` 		(will be added below; if you wish)
  - [ ] `modifications.md` 		(will be added below; note any modifications made)
  - [ ] `document.md` 			(will be added below; the main text of the article)
  - [ ] `[filename].pdf` 		(re-OCRed version if applicable)
  - [ ] any images go in `images`
- [ ] check it with `hugo serve`
- [ ] remove `draft` status from `YAML` frontmatter
- [ ] remove this section of document
- [ ] build site, push changes

See **About: Site development** for notes. 

* [local dev](http://localhost:1313/about/site-development/)
* [live](https://ragynotes.github.io/about/site-development/)


## Document information

Year of original publication: {{< param originalyear >}}

Format of original publication:  {{< param originalformat >}}











