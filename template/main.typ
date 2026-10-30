#import "@local/nor-letter:0.2.0": letter, indented, signature

#show: letter.with(
  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                      DOCUMENT DATA                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

  subject:        none,

  // Metadata fields mostly for documents that are not letters
  doc-type:       none,       // document type: minutes, memo etc.
  doc-type-code:  none,       // if e.g. Memo has a template number
  marking:        none,       // draft, confidential etc.

  lang: "en",  // en/nb/nn - changes label templates, hyphenation etc

  // ── Message references ──────────────────────────────────────────────
  // date:    "2020-01-20",     // uncomment to override automatic date
  our-ref:    none,
  your-date:  none,
  your-ref:   none,

  // ── Recipient ───────────────────────────────────────────────────────
  notice: none,         // bold line above the address, e.g. "Rek.sending"
  recipient: none,      // [Varnsen Inc. \ Postboks 123 \ 5000 BERGEN]
  right-address: none,  // (label, content)
                        // e.g. ("Kopi", [ABCDpt. \ Pb. 15 DEP])

  // ── Label overrides ─────────────────────────────────────────────────
  labels: (:),          // e.g. (handler: "Drafted by",)

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                         SENDER                          ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

  // Name and logo fields for header. Must have _either_ company or person fields.
  // Complete address and other relevant details go in footer.
  // company: (name: "", department: "", handler: "")
  // person: (name: "", address: "")
  company: (
    name: "Vandelay Industries",
    department: "Exports department",
    handler: "A. Vandelay"
  ),
  // person: none,
  person: none,

  logo: none,     // none, or image("logo.png")

  // ── Full contact details, for footer ────────────────────────────────
  // Pairs of ((label, content)); (("Postadresse", "Jogata 4 \ 5000 Neiby"), ) OR
  // columns of [*header* \ content \ *header* content],[...] to fit more fields.
  // By default up to 4 columns. Edit footer-tabs (e.g. 0,2,4,5,6) to fit more.
  footer: (
    ("Postadresse", [Street \ Town]),
    ("Telefon",     "+47 123 45 678"),
    ("E-post",      [#link("mailto:art@vandelay.biz")[art\@vandelay.biz]]),
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

body

Yours,

#signature()[Art Vandelay \ Architect]
