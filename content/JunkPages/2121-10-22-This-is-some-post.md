---
lastmod: '2021-10-19T07:09:37.428Z'

title: "This is some post"

tags:
  - Internet Archive
  - re-OCR
  - PDF
---





## Front Matter Variables 

### Predefined 

There are a few predefined variables that Hugo is aware of. See [Page Variables](https://gohugo.io/variables/page/) for how to call many of these predefined variables in your templates.

- aliases

  an array of one or more aliases (e.g., old published paths of  renamed content) that will be created in the output directory structure . See [Aliases](https://gohugo.io/content-management/urls/#aliases) for details.

- audio

  an array of paths to audio files related to the page; used by the `opengraph` [internal template](https://gohugo.io/templates/internal) to populate `og:audio`.

- cascade

  a map of Front Matter keys whose values are passed down to the  page’s descendents unless overwritten by self or a closer ancestor’s  cascade. See [Front Matter Cascade](https://gohugo.io/content-management/front-matter/#front-matter-cascade) for details.

```bibtex
@inbook{1906l.wrayBiakOpiumSubstitute,
  title = {“{{Biak}}”: An {{Opium Substitute}}},
  booktitle = {Journal of the {{Federated Malay States}} Museums},
  author = {{L. Wray}},
  date = {1906/1929},
  volume = {2},
  pages = {53--56},
  publisher = {{Kuala Lumpur : F.M.S. Museums}},
  location = {{Kuala Lumpur}},
  url = {http://archive.org/details/journaloffederat02fedeuoft},
  urldate = {2021-10-22},
  abstract = {Fleming Collection; 14 29},
  bookauthor = {Federated Malay States and Museum, Perak State and Museum, Selangor State},
  langid = {english},
  volumes = {10}
}
```

