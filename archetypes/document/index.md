---
title: "{{ replace .Name "-" " " | title }}"
# alternate from zen-theme (which is better?):
# title: "{{ replace .TranslationBaseName "-" " " | humanize }}"
originalyear: 1000					# ❗
originalformat: Newspaper article	# ❗

tags:								# ❗
#  - Internet Archive
#  - re-OCR
#  - PDF
summary: 							# ❗
alias: 								# ❗ use bibkey from zotero
lang: en							# ❗
.IsTranslated: false				# ❗

draft: true	# ❗ page will not be included in site build until draft status is removed

date: {{ .Date }}
lastmod: {{ .Date }}
---

## ❗ Document TODO

`[filename]` in the below should be consistent filename for document. otherwise, keep filenames as indicated.

- [ ] find all 	`❗` in this page and fill the information. delete when done
- [ ] in folder with `index.md`, add:
  - [ ] `bibliography.yaml`		(create with zotero)
  - [ ] `bibliography.bib` 		(create with zotero)
  - [ ] `bibliography.json` 	(create with zotero)
  - [ ] `[filename].pdf` 		(re-OCRed version if applicable)
  - [ ] `[filename].txt`
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

### Source of original document			<!--❗-->



### Notes on modifications and changes made		<!--❗-->

Any changes made to the original document to improve presentation will be noted here. These have been shared for the sake of convenience and comprehension. In situations where fidelity to the original document is crucial, and to more fully understand the context, you are encouraged to consult the source document on the original archive or website. 

<!--	❗ delete section if n/a
#### OCR re-done

To improve the quality of the text extracted from the document, it was re processed using the following command:

````sh
# re OCRed:
````

General information about how to do this kind of thing can be found in the website's issue tracker: [How to OCR or re OCR PDFs or create PDFs · Issue #9](https://github.com/ragynotes/ragynotes.github.io/issues/9)
-->

<!--	❗  delete section if n/a
#### Manual clean up

The text as presented has been manually cleaned up to reduced errors of OCR. However, it's possible new mistakes could be introduced this way. 
-->

<!--	❗  delete section if n/a
#### Pages removed

The original document contained pages which are not relevant to this website's subject matter. In the interest of keeping files small, they have been removed. 
-->


## Commentary

none


## Text of document		<!--❗-->

## See also

none












