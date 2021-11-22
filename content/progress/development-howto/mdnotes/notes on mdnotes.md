

# notes on `mdnotes`

use "batch export to markdown"

## general

- need to include 2x line-breaks sequentially to ensure new line
- tried changing export filenames to include `/` in hopes of making subdirectories but instead the files seem to have not showed up? looked in both specified and default directories but not found. 

### custom formatting

- It is adding the name of each feild before the information in the format: `Cite key: 1969blum`. This is documented with workarounds provided at: [Field formatting - zotero-mdnotes](https://argenos.gitbook.io/zotero-mdnotes/customization/formatting)
  - changes are made in Zotero hidden `about:config`. 
- I notice that line breaks are denoted with `\n`

#### `bullet`

try changing `extensions.mdnotes.bullet`:

```json
*
```

to

```json

```

ok, that help. not enough though.

#### `title`

try changing `extensions.mdnotes.placeholder.title`:

```json
{"content":"# {{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

to

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

perfect! for the title. now what about the rest?

#### ⚠️ `url`

`extensions.mdnotes.placeholder.url` to (added `link_style` component):

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

- adding `link_style` didn't work so instead try changing value in preferences dialogue and change value to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}"}
```

⚠️ changing the preference in the dialogue is only for "internal links" so this still turns to markdown. However not the end of the world so will proceed to fix the rest then return here later if needed. 

#### `author`

`extensions.mdnotes.placeholder.author` change to:

```json
{"content":"{{field_contents}}", "link_style": "none", "list_separator": ", "}
```

perfect!



#### `citekey`

what happens if I just delete the value of the key?

`extensions.mdnotes.placeholder.citekey` original:

```json
{"content":"{{bullet}} Cite key: {{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

seems to have no impact. 

change to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

perfect! 

#### `abstractNote`

`extensions.mdnotes.placeholder.abstractNote` change to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links", "list_separator": ", "}
```

looks good! might consider changing `"list_separator"` to `/n/n` or making the whole thing into a list or blockquote. but will leave that to the future.  

#### library links

`extensions.mdnotes.placeholder.cloudLibrary`, `extensions.mdnotes.placeholder.localLibrary`

```json
{"content":"{{field_contents}}"}
```

#### ⚠️`DOI`

`extensions.mdnotes.placeholder.DOI` change to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links"}
```

⚠️result is: `[10/gb85nb](https://doi.org/10/gb85nb)` so still has link. May need to investigate further in the future but for now, leave. 



#### ⚠️ `tags`

`extensions.mdnotes.placeholder.tags` change to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links", "list_separator": "\n\n\t", "remove_spaces": "true"}
```

perfect! have used what I believe to be the correct formatting for `yaml` which is one tag per line (I prefer this to comma delineated lists). 2x `\n` is required at least for the display in typora. ⚠️ May not *actually* be needed in the frontmatter. 

#### ⚠️ `collections`

`extensions.mdnotes.placeholder.collections` change to:

```json
{"content":"{{field_contents}}", "field_contents": "{{content}}", "link_style": "no-links", "list_separator": "\n\n\t"}
```

⚠️ There are no items with >1 collection so this is not properly tested. I am also not sure if or how I will use this. Have defaulted to formatting same as `tags`  on the assumption that they would go in the `yaml` front matter. 













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

  





























