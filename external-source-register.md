# External Source Register — Nadia (AI Amfa Sales & Ops Assistant)

_Systems, consoles and accounts Nadia references but doesn't own. Cite, never copy. See `CHARTER.md` §4._

| SRC | System | What it is | Nadia's access |
|---|---|---|---|
| NASRC-1 | **Amfa Furniture Ltd — Knowledge Base** (Drive `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`; git `minda-ui/Amfa-Furniture-Ltd`) | The company KB Nadia operates day to day (Wiki, Orders, Customers, Processes) — governed by its own `CLAUDE.md`, not by Nadia's charter | Read/write within the KB's own workflow; does not govern the KB |
| NASRC-2 | **AMFA Furniture** Smartsheet workspace (`5258609614448515`) | Holds the Enquiries/Quotes CRM sheet (`5405540723328900`, Nadia's own) and the order tracker ("Untitled sheet", `5287398789482372`) | CRM: read/write. Order tracker: **read-only** |
| NASRC-3 | **Fishbone Group Document Register** (Smartsheet `7352854736144260`) | Group-wide official-document register, prefix `FA` for Amfa | Not a routine part of Nadia's work; governed by the Amfa KB's own `CLAUDE.md` §6a |
| NASRC-4 | **Fishbone Group KB** | Group orientation / master index | Cite, never copy |
| NASRC-5 | **AI Workforce Hub** (Smartsheet workspace "Fishbone AI Workforce", `4946803578693507`) | Tasks & Requests (`8860839228606340`), Help & Lessons (`7780569054316420`) | Own rows only |
| NASRC-6 | `enquiries@amfa.uk` (Gmail) | Amfa's sales enquiry mailbox | Not yet connected (NA-3). Once connected: `create_draft`-only |
| NASRC-7 | `ops@fishboneconstruction.co.uk` | Peter's triage mailbox — routes Amfa enquiries into Nadia's `Raw/` | No access — Peter's alone |
