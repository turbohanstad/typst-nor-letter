#import "@local/nor-letter:0.2.0": letter, indented, signature

#show: letter.with(
  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                      DOCUMENT DATA                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  subject:        "Business letter conforming to NS4129",

  doc-type:       "Memo",         // document type: minutes, memo etc.
  doc-type-code:  none,       // if e.g. Memo has a template number
  marking:        none,        // draft, confidential etc.

  lang: "en",  // en/nb/nn - changes label templates, hyphenation etc

  // ── Message references ──────────────────────────────────────────────
  // date:    "2026-10-22",     // uncomment to override automatic date
  our-ref:    "26-1502",
  your-date:  "2021-01-01",
  your-ref:   "21/1555-12",

  // ── Recipient ───────────────────────────────────────────────────────
  notice: [Registered letter],         // bold line above the address, e.g. "Rek.sending"
  recipient: [
    Varnsen Inc. \
    Postboks 1 \
    5000 BERGEN
  ],
  right-address: ("Copy:", [Jackie Chiles \ Attorney at Law]),  // e.g. [Kopi til: \ Industridepartementet]

  // ── Label overrides ─────────────────────────────────────────────────
  labels: (:),          // e.g. (handler: "Kontaktperson",)

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                         SENDER                          ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  // Use _either_ company (b2b) or person fields.

  company: (
    name:       "Vandelay Industries",
    department: "Import/export department",
    handler:    "Bob Sacamano, bob@vandelay.biz",
  ),
  person: none,
  // person: (
  //   name:    "H.E. Pennypacker",              // line 4
  //   address: "Inkognitagata 99, 0123 OSLO",   // lines 5–6
  // ),

  logo: image("logo.svg"),     // none, or image("logo.png")

  // ── Sender's full contact details for footer ────────────────────────
  footer: (
    ("Postadresse", [Inkognitagata 99 \ 0123 OSLO]),
    ("Telefon",     "911 91 911"),
    ("E-post",      [#link("mailto:art@vandelay.biz")[art\@vandelay.biz] \
                     #link("mailto:lawsuits@vandelay.biz")[lawsuits\@vandelay.biz]]),
    ("Telex",       "41554"),
  ),

  // ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
  // ┃                     LAYOUT OPTIONS                      ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
  folding-marks: true,              // fold marks for E65/DL window envelopes
  fold-at: (105mm, 210mm),          // fold mark positions, from the top edge
  two-sided: false,                 // mirror even pages (binding margin on the right)
  even-margins: true,               // body text right margin = left margin
  justify: true,                    // false: ragged right
  rules: true,                      // rules below the header and above the footer
  list-indent: 1,                   // list markers on tab position n
)

// ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
// ┃                        BODY TEXT                        ┃
// ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

#lorem(80)
- Lorem ipsum dolor sit amet, consectetur adipiscing elit
- Ut enim aeque doleamus animo
- Quod idem licet transferre in voluptatem

#lorem(50)
#indented([_#lorem(40)_])

#lorem(60)

Yours,
#signature()[Art Vandelay \ Director General][Bob Sacamano \ Associate]
