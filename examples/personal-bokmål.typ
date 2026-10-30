#import "@local/nor-letter:0.2.0": letter, indented, signature

#show: letter.with(
  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                      DOCUMENT DATA                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  subject:        "Eksempelbrev etter norsk standard 4129",

  // Metadata fields mostly for documents that are not letters
  doc-type:       none,
  doc-type-code:  none,       // if e.g. Memo has a template number
  marking:        none,       // draft, confidential etc.

  lang: "nb",  // en/nb/nn - changes label templates, hyphenation etc

  // ── Message references ──────────────────────────────────────────────
  // date:    "2020-01-20",     // uncomment to override automatic date
  our-ref:    none,
  your-date:  "2021-01-20",
  your-ref:   "21/1555-12",

  // ── Recipient ───────────────────────────────────────────────────────
  notice: none,         // bold line above the address, e.g. "Rek.sending"
  recipient: [
    Varnsen Inc. \
    Pb. 123 \ 
    4567 BERGEN
  ],
  right-address: none, // e.g. ("Kopi", [ABCDpt. \ Pb. 15 DEP])

  // ── Label overrides ─────────────────────────────────────────────────
  labels: (:),

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                         SENDER                          ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  // Name and logo fields for header. Must have _either_ company or person fields.
  // Complete address and other relevant details go in footer.
  // company: (name: "", department: "", handler: "")
  // person: (name: "", address: "")

  company: none,
  person: (
    name: "H. E. Pennypacker",
    address: "Uranienborg, Oslo (midl.)"
  ),

  logo: none,

  // ── Full contact details, for footer ────────────────────────────────
  // Pairs of ((label, content)); (("Postadresse", "Jogata 4 \ 5000 Neiby"), ) OR
  // columns of [*header* \ content \ *header* content],[...] to fit more fields.
  // By default up to 4 columns. Edit footer-tabs (e.g. 0,2,4,5,6) to fit more.
  footer: (
    ("Postadresse", [Poste restante \ 9170 Longyearbyen]),
    ("Telefon",     "987 65 432"),
    ("E-post",      [#link("mailto:hep@packer.biz")[hep\@packer.biz] \
                     #link("mailto:donotreply@chiles.law")[jackie\@chiles.law]]),
    ("Kontonummer", [012 345678 901 (BDA\$)\ BBDABMHM \ HSBC Bermuda]),
  ),
  footer-tabs: (0, 2, 4, 6),

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                     LAYOUT OPTIONS                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  folding-marks: false,              // fold marks for E65/DL window envelopes
  two-sided: true,                 // mirror even pages (binding margin on the right)
  even-margins: false,               // body text right margin = left margin
  justify: false,                    // false: ragged right
  rules: true,                      // rules below the header and above the footer
  list-indent: 1,                   // list markers on tab position n
)

// ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
// ┃                        BODY TEXT                        ┃
// ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

// use #indented[content] for indented paragraphs
Side to og påfølgende har en mer kompakt topptekst, kun med nødvendig metadata for å identifisere hvilket dokument det hører til. Bunnteksten med kontaktinformasjon finnes bare på første side. Dette eksemplet har også et litt annet utseende, justert som følger:
- Even-margins: false
- Double-sided: true
- Justify: False

#lorem(50)

#lorem(45)

#lorem(120)

#indented[MERKNAD: #lorem(55)]

#lorem(99)

#lorem(100)

#lorem(80)

#lorem(40)

Med vennlig hilsen

#signature()[H. E. Pennypacker \ Filantrop, syklist m.v.]
