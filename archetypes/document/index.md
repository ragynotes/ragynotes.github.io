---
title: "{{ replace .Name "-" " " | title }}"
originalyear: 1000					# ❗ when was it published
originalformat: Newspaper article	# ❗ see config.toml for examples

tags:								# ❗
#  - Internet Archive
#  - re-OCR
#  - PDF
summary: 							# ❗
alias: 								# ❗ use bibkey from zotero
lang: en							# ❗
.IsTranslated: false				# ❗

draft: true	# ❗ page will not be included in site build until draft status is changed

date: {{ .Date }}
lastmod: {{ .Date }}
---

## ❗ Document TODO

`[filename]` in the below should be consistent filename for document. otherwise, keep filenames as indicated.

- [ ] find all 	`❗` in this page and fill the information. delete when done
- [ ] in folder with `index.md`, fill:
  - [ ] `bibliography.yaml`		(create with zotero)
  - [x] `bibliography.bib` 		(create with zotero)
  - [ ] `bibliography.json` 	(create with zotero)
  - [ ] `commentary.md` 		(will be added below; if you wish)
  - [ ] `modifications.md` 		(will be added below; note any modifications made)
  - [x] `document.md` 			(will be added below; the main text of the article)
  - [x] `[filename].pdf` 		(re-OCRed version if applicable)
  - [ ] any images go in `images`
- [ ] check it with `hugo serve`
- [ ] remove `draft` status from `YAML` frontmatter
- [ ] remove this section of document
- [ ] build site, push changes

See **About: Site development** for notes. 

* [local dev](http://localhost:1313/about/site-development/)
* [live](https://ragynotes.github.io/about/site-development/)


## Document information

Year of original publication: {{< param originalyear >}}

Format of original publication:  {{< param originalformat >}}

### Origin of original document

{{< readfile "origin.md" >}}

### Notes on modifications and changes made	

{{< readfile "modifications.md" >}}

## Commentary

{{< readfile "commentary.md" >}}

## Text of document	

{{< readfile "document.md" >}}

## See also

none












