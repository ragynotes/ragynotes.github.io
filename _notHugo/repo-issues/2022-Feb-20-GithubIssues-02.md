these are tools that interface *existing* research and collection of material with the internet

# hugo

Note: The installed by default markdown processor includes syntax highlighting for bibtext code blocks. [Syntax Highlighting](https://gohugo.io/content-management/syntax-highlighting/)

## hugo cite

[Hugo Cite](https://labs.loupbrun.ca/hugo-cite/faq/):

> that APA is currently the only style partially supported.

> Hugo Cite currently supports (in beta) these types of publication:
>
> - book
> - book chapter
> - article (or journal article)
> - website

## Asciidoctor

[Bibliography :: Asciidoctor Docs](https://docs.asciidoctor.org/asciidoc/latest/sections/bibliography/)

[External Helper Asciidoctor ](https://gohugo.io/content-management/formats/#external-helper-asciidoctor)

## Third hemisphere theme

> The only format supported is JSON, which must follow the [CSL-JSON spec](https://citeproc-js.readthedocs.io/en/latest/csl-json/markup.html).

[Create Bibliographies in Hugo with a shortcode](https://lucidmanager.org/productivity/hugo-bibliography/):

> Hugo can generate HTML content from JSON files, so all we need is a bibliography in this format. The [Citation Style Language](https://citationstyles.org/) (CSL) is a modern bibliography format that is perfect for this purpose. .... The *Third hemisphere* theme contains three shortcodes to display information from the bibliography file

- [hugo-thirdhemisphere/bibliography.html at master · pprevos/hugo-thirdhemisphere](https://github.com/pprevos/hugo-thirdhemisphere/blob/master/layouts/shortcodes/bibliography.html)

## academic theme

[Academic](https://themes.gohugo.io/themes/hugo-academic/) includes

> **[Academic Admin CLI](https://github.com/sourcethemes/academic-admin):** An admin tool to import publications from BibTeX or import assets for an offline site

related is: [wowchemy-hugo-themes](https://github.com/wowchemy/wowchemy-hugo-themes) the website builder for Hugo thread

[Make it easier to cite references · Issue #830 · wowchemy/wowchemy-hugo-themes](https://github.com/wowchemy/wowchemy-hugo-themes/issues/830)

### Jaan Tollander de Balsch

[Scientific Writing with Markdown | Jaan Tollander de Balsch](https://jaantollander.com/post/scientific-writing-with-markdown/)

> To help getting started, check out the [Markdown-Templates](https://github.com/jaantollander/Markdown-Templates) GitHub repository, which demonstrates how to create documents in practice. 

> For creating a static website to write scientific content using Markdown, we recommend using [*Hugo*](https://gohugo.io/) with [*Wowchemy*](https://wowchemy.com/).

> We write the front matter in YAML between two triple-minus lines `---` as follows.
>
> ```yaml
> ---
> title: "Title"
> date: \today
> author: "Author"
> bibliography: "bibliography.bib"
> link-citations: true
> urlcolor: "blue"
> csl: "https://raw.githubusercontent.com/citation-style-language/styles/master/harvard-anglia-ruskin-university.csl"
> ---
> ```
>
> The `title`, `date`, and `author` variables specify information for creating the title. The `bibliography` variable specifies the location of the bibliography file, `link-citations` toggles links to citations on and off, `urlcolor` defines the link color, and the `csl` variable defines the [Citation Style Language](http://citationstyles.org/). We can find examples of citation styles from [Zotero styles](https://www.zotero.org/styles) and use them by either downloading them or referring directly to the URL of the raw CLS file in [citation styles](https://github.com/citation-style-language/styles) repository.

[jaantollander/Markdown-Templates](https://github.com/jaantollander/Markdown-Templates): Templates for creating scientific, academic and technical documents using Markdown and Pandoc that support equations, code blocks, citations, Unicode symbols and vector graphics

### discussion threads

#### How can I manage a publication list in Hugo, preferrably from Bibtex file? 

[How can I manage a publication list in Hugo, preferrably from Bibtex file? - support - HUGO](https://discourse.gohugo.io/t/how-can-i-manage-a-publication-list-in-hugo-preferrably-from-bibtex-file/2089/7) 

suggests using [mmarkdown/mmark: Mmark: a powerful markdown processor in Go geared towards the IETF](https://github.com/mmarkdown/mmark) as md processror which includes [Citations](https://mmark.miek.nl/syntax#citations) and adding [XML References](https://mmark.miek.nl/syntax#xml-references):

> Mmark uses the citation syntax from Pandoc: `[@RFC2535]`, the citation can either be informative (default) or normative, this can be indicated by using the `?` or `!` modifier: `[@!RFC2535]` create a normative reference for RFC 2535. To suppress a citation use `[@-RFC1000]`. It will still add the citation to the references, but does not show up in the document as a citation. ... A bibliography section is created by default if a `{backmatter}` is given, but you can suppress it by using the command line flag `-bibliography=false`.

another solution:

> I found a solution using pandoc and hugo which might be a workaround.
>
> Given you have a markdown file ([input.md 26](http://input.md)) with citations as you use it in a typical Pandoc project. Citations are referenced like this.
>
> ```
> lorem ipsum[@foobar_2013]
> ```
>
> `@foobar_2013` ist the key pointing to the bibtex entry in your bibliography file `yourbiblio.bib`.
>
> 1. Run pandoc on this file like this:
>    `pandoc input.md -t markdown-citations -s --bibliography yourbiblio.bib --csl yourstyle.csl -o output.md`
>    This will create a markdown file with normal footnotes and expanded citations.
>
>    `lorem ipsum[^1]`
>
>    [^1]: John Foobar. Lorem ipsum. Hometown, 2013
>
> 2. Copy the [output.md 12](http://output.md) to `content/post` or where ever you want it, and run `hugo server`
>
> You will recognize that the file `output.md` contains a  list of publications, used for this text, at the end of the file. Put a  headline in front of this list, something like `# Bibliography`. The footnotes are placed after this list at the very end of the file.

# zotero

## zotsite

[plandes/zotsite](https://github.com/plandes/zotsite) - Export Zotero to a stand-alone web site

> This generated website has the following features:
>
> - Easily access your papers, site snapshots, notes from a navigation tree.
> - Provides metadata from collections and attachments (i.e. referenes etc).
> - Display PDF papers and website snapshot (the latter as framed).
> - Search function dynamically narrows down the papers you're looking for.
> - Embed links to a specific collection, article, item, note etc.
> - Export only a portion of your collection with regular expressions using the collection name.
> - [BetterBibtex](https://github.com/retorquere/zotero-better-bibtex) integration.
> - Snazzy look and feel from the latest [Bootstrap](https://getbootstrap.com) CSS/Javascript library.

##  Zot_Bib_Web (npm)

[davidswelt/zot_bib_web: Create interactive web bibliographies based on Zotero collections](https://github.com/davidswelt/zot_bib_web)

docs: [Interactive web bibliographies with Zotero](https://zot-bib-web.readthedocs.io/en/latest/)

> This tool generates interactive web bibliographies based on one or more collections in a Zotero repository. Collections can be maintained by groups of people, using Zotero’s web interface or their desktop applications. ...
>
> Zot_bib_web does not depend on any third-party web server. The generated bibliographies load quickly because they are stored as static files along with the rest of your website.

**Mac users:** See my issue to resolve python errors: [ImportError: No module named pyzotero · Issue #17 · davidswelt/zot_bib_web](https://github.com/davidswelt/zot_bib_web/issues/17)

## Zotero Translation Client

[zotero/bib: Translation and bibliography management for ZoteroBib](https://github.com/zotero/bib) 

implementation: [ZoteroBib: Fast, free bibliography generator - MLA, APA, Chicago, Harvard citations](https://zbib.org/)

## csl-to-markdown (rust/cargo)

[Eonm/csl-to-markdown](https://github.com/Eonm/csl-to-markdown) - Makes your Zotero's/Mendeley's bibliography export compatible with markdown

[argenos/zotero-mdnotes](https://github.com/argenos/zotero-mdnotes) - A Zotero plugin to export item metadata and notes as markdown files

## combined with `papis` (python/pip3)

[papis/papis](https://github.com/papis/papis) - Powerful and highly extensible command-line based document and bibliography manager.

- [papis’ documentation](https://papis.readthedocs.io/en/latest/)

[papis/papis-zotero](https://github.com/papis/papis-zotero) - Zotero compatiblity scripts for papis

[papis-html · papis/scripts](https://github.com/papis/scripts/tree/master/papis-html)

> Create a simple searchable offline html site with your references

## misc zotero

[Zotero Documentation - Plugins for Zotero](https://www.zotero.org/support/plugins)

[Turning a Zotero bibliography into an online, browsable catalog – The Digital Orientalist](https://digitalorientalist.com/2020/12/18/turning-a-zotero-bibliography-into-an-online-browsable-catalog/)

> You can turn any collection of books and articles from Zotero into a website that is easy to search, accessible to anyone, and customize it the way you like. This approach also works if you are using Mendeley or Papers, or any other program that supports export to CSL-JSON, which stands for Citation Style Language JSON (and JSON is an acronym for JavaScript Object Notation, more on that later). 

## kerko

[whiskyechobravo/kerko](https://github.com/whiskyechobravo/kerko) - A web application component that provides a faceted search interface for bibliographies managed with Zotero.

> The combination of Kerko and Zotero gives you the best of both worlds: a rich but easy to use web interface for end-users of the bibliography, and a well-established and powerful bibliographic reference management tool for individuals or teams working on the bibliography's content.

Related: [whiskyechobravo/kerkoapp: A web application that provides a faceted search interface for bibliographies managed with Zotero.](https://github.com/whiskyechobravo/kerkoapp)

## zotero misc (TBD)

* [oahrens/Zotero-Tools: Tools for Zotero (citation and reference management software)](https://github.com/oahrens/Zotero-Tools)
* [zuphilip/zotero-open-citations: Zotero Plugin for Open Citations](https://github.com/zuphilip/zotero-open-citations)
* [odkr/pandoc-zotxt.lua: Pandoc filter that looks up sources of citations in Zotero.](https://github.com/odkr/pandoc-zotxt.lua)
* [egh/zotxt: zotxt: a Zotero extension for text](https://github.com/egh/zotxt/)
* [Erik Hetzner / zotxt · GitLab](https://gitlab.com/egh/zotxt)

# manubot

video: [Revolutionizing scholarly writing with Manubot: a foreshadow of the future - Daniel Himmelstein - YTPrivate](https://ytprivate.com/watch?v=sGL0osdby0U) ([YouTube](https://www.youtube.com/watch?v=sGL0osdby0U))

[manubot/rootstock: Clone me to create your Manubot manuscript](https://github.com/manubot/rootstock) > [Open collaborative writing with Manubot](https://greenelab.github.io/meta-review/):

> Manubot adopts the contribution workflow used by many large-scale open  source software projects to enable collaborative authoring of scholarly  manuscripts. With Manubot, manuscripts are written in Markdown and stored in a Git  repository to precisely track changes over time. By hosting manuscript repositories publicly, such as on GitHub, multiple authors can simultaneously propose and review changes. A cloud service automatically evaluates proposed changes to catch  errors. Publication with Manubot is continuous: When a manuscript’s source changes, the rendered outputs are rebuilt and republished to a webpage. Manubot automates bibliographic tasks by implementing citation by  identifier, where users cite persistent identifiers (e.g. DOIs, PubMed  IDs, ISBNs, URLs), whose metadata is then retrieved and converted to a  user-specified style. Manubot modernizes publishing to align with the ideals of open science  by making it transparent, reproducible, immediate, versioned,  collaborative, and free of charge.

> Manubot comes with several “plugins” that can be included in manuscripts exported as HTML. These plugins add special interactive features that enhance the user experience of viewing and reading manuscripts (Figure [3](https://greenelab.github.io/meta-review/#fig:plugins)). For example, with the “tooltips” plugin enabled, when the user hovers  over a link to a reference or figure, a preview of that item pops up  above the link, along with controls to navigate between other mentions  of that item elsewhere in the document. The build process can also accommodate different “themes”, which change  the general aesthetics and appearance of the exported document  (e.g. from a contemporary sans-serif style to a more traditional serif  style). The architecture of the plugins and themes is designed to provide  authors with enough flexibility to suit their particular needs and  preferences.

# jekyll

[inukshuk/jekyll-scholar: jekyll extensions for the blogging scholar](https://github.com/inukshuk/jekyll-scholar)

> a set of extensions to Jekyll, the awesome, blog aware, static site generator; it formats your bibliographies and reading lists for the web and gives your blog posts citation super-powers.* [Bootstrap Blog Theme | Hugo Themes](https://themes.gohugo.io/themes/hugo-theme-bootstrap/#shortcodes)
* [Fuji | Hugo Themes](https://themes.gohugo.io/themes/hugo-theme-fuji/)
* [Techdoc | Hugo Themes](https://themes.gohugo.io/themes/hugo-theme-techdoc/)
* [Eureka | Hugo Themes](https://themes.gohugo.io/themes/hugo-eureka/)
* [Relearn | Hugo Themes](https://themes.gohugo.io/themes/hugo-theme-relearn/)consider setting up github actions so website is in 2 repos instead of 1 as suggested in the [hugo docs](https://gohugo.io/hosting-and-deployment/hosting-on-github/)add licensing information to website and repo # zotero

## Extension: Better BibTeX for Zotero

> Better BibTeX (BBT) is an extension for Zotero and Juris-M that makes it easier to manage bibliographic data, especially for people authoring documents using text-based toolchains (e.g. based on LaTeX / Markdown).

repo: [retorquere/zotero-better-bibtex](https://github.com/retorquere/zotero-better-bibtex): Make Zotero effective for us LaTeX holdouts

Docs [docs](https://retorque.re/zotero-better-bibtex/)

📌 `citekey` configured as `[year][auth:lower]`. put `alias` in the `YAML` frontmatter of posts

# ancillary tools

## JabRef

[documenmtation](https://docs.jabref.org/)

## obsidian

[hans/obsidian-citation-plugin at 0.1.3](https://github.com/hans/obsidian-citation-plugin/tree/0.1.3) Obsidian plugin which integrates your academic reference manager with the Obsidian editor. Search your references from within Obsidian and automatically create and reference literature notes for papers and books. 




