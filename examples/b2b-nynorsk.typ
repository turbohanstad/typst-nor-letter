#import "@local/nor-letter:0.2.0": letter, indented, signature

#show: letter.with(
  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                      DOCUMENT DATA                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  subject:        "Kontordukument i tråd med NS4129",

  // Metadata fields mostly for documents that are not letters
  doc-type:       none,
  doc-type-code:  none,       // if e.g. Memo has a template number
  marking:        none,       // draft, confidential etc.

  lang: "nn",  // en/nb/nn - changes label templates, hyphenation etc

  // ── Message references ──────────────────────────────────────────────
  // date:    "2020-01-20",     // uncomment to override automatic date
  our-ref:    "26-1602",
  your-date:  "2021-01-20",
  your-ref:   "21/1555-12",

  // ── Recipient ───────────────────────────────────────────────────────
  notice: none,         // bold line above the address, e.g. "Rek.sending"
  recipient: [
    Varnsen Inc. \
    Pb. 123 \ 
    4567 BERGEN
  ],
  right-address: ("Kopi til:", [Jackie Chiles \ Attorney at Law]),
                        // e.g. ("Kopi", [ABCDpt. \ Pb. 15 DEP])

  // ── Label overrides ─────────────────────────────────────────────────
  labels: (:),

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                         SENDER                          ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  // Name and logo fields for header. Must have _either_ company or person fields.
  // Complete address and other relevant details go in footer.
  // company: (name: "", department: "", handler: "")
  // person: (name: "", address: "")

  company: (
    name: "Vandelay Industries",
    department: "Avdeling for import/eksport",
    handler: "Bob Sacamano, bob@vandelay.biz"
  ),
  // person: none,
  person: none,

  logo: image("logo.svg"),

  // ── Full contact details, for footer ────────────────────────────────
  // Pairs of ((label, content)); (("Postadresse", "Jogata 4 \ 5000 Neiby"), ) OR
  // columns of [*header* \ content \ *header* content],[...] to fit more fields.
  // By default up to 4 columns. Edit footer-tabs (e.g. 0,2,4,5,6) to fit more.
  footer: (
    ("Postadresse", [Inkognitogata 99 \ 0123 Oslo]),
    ("E-post", "noreply@vandelay.biz"),
    ("Telefon", [+47 987 65 321 \ +47 12 34 98 76 (fax)]),
  ),
  footer-tabs: (0, 2, 4, 6),

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                     LAYOUT OPTIONS                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  folding-marks: true,              // fold marks for E65/DL window envelopes
  two-sided: false,                 // mirror even pages (binding margin on the right)
  even-margins: true,               // body text right margin = left margin
  justify: true,                    // false: ragged right
  rules: true,                      // rules below the header and above the footer
  list-indent: 1,                   // list markers on tab position n
)

// ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
// ┃                        BODY TEXT                        ┃
// ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

// use #indented[content] for indented paragraphs
#lorem(80)

- Lorem ipsum dolor sit amet, consectetur adipiscing elit
- Sed do eiusmod tempor incididunt ut labore et dolore
- Magnam aliquam quaerat voluptatem enim aeque doleamus animo

#lorem(50)

#lorem(45)

Med helsing

#signature()[Art Vandelay \ Sjefsarkitekt][B. Sacamano \ Bekjent]
