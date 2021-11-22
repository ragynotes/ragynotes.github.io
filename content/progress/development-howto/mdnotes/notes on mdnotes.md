

# notes on `mdnotes`

## general

- need to include 2x line-breaks sequentially to ensure new line

### custom formatting

- It is adding the name of each feild before the information in the format: `Cite key: 1969blum`. This is documented with workarounds provided at: [Field formatting - zotero-mdnotes](https://argenos.gitbook.io/zotero-mdnotes/customization/formatting)
  - changes are made in Zotero hidden `about:config`. 

try changing:

```json
extensions.mdnotes.bullet;*
```

to

```json
extensions.mdnotes.bullet;
```







## fields

### most useful Zotero fields

descriptions can be found at [kb:item types and fields [Zotero Documentation]](https://www.zotero.org/support/kb/item_types_and_fields) and precise names at  [api.zotero.org/itemFields](https://api.zotero.org/itemFields?pprint=1). 

- `{{country}}`
- `{{DOI}}`

- `{{edition}}`
- `{{extra}}`
- `{{ISBN}}`

- `{{issue}}`

- `{{pages}}`

- `{{patent}}`

- `{{place}}`

- `{{publicationTitle}}`

- `{{publisher}}`
  - as link:  [San Francisco, Jossey-Bass](san-francisco,-jossey-bass)
- `{{references}}`

- `{{rights}}`

- `{{section}}`

- `{{shortTitle}}`

- `{{url}}`

- `{{volume}}`

### `mdnotes`  fields

Full list here: [Placeholders - zotero-mdnotes](https://argenos.gitbook.io/zotero-mdnotes/customization/placeholders#item-placeholders)

- `{{itemType}}` - The Zotero item type. 
  - Creates a link: [Book](book)
- `{{citekey}}` - The citekey (requires the Better Bibtex plugin).
- `{{tags}}` - The list of tags for the selected item.
- `{{dateAdded}}` - The date the item was added to your library.
- `{{notes}}` - A list of all the titles of all the child notes.

Probably note useful, but might be:

- `{{pdfAttachments}}` = A list of links to any PDF attachments.

- `{{mdnotesFileName}}` - The name of the default mdnotes file (following the naming convention).

- `{{metadataFileName}}` - The name of the Zotero metadata file (following the naming convention).

- `{{collections}}` - A list of collections an item belongs to.

- `{{related}}` - A list of [related items](https://www.zotero.org/support/related).

  





























