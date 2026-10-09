# Change log — 2026-10-07 — Sales-contract template drafted; NA-2 resolved

**What happened:** Asked to draft a sales contract. Checked first: no sales contract or template
existed anywhere in the Amfa KB (CRM `5405540723328900` has zero rows; `Wiki/Orders/`, `Wiki/Customers/`
both empty). The closest thing, `Wiki/Processes/order-fulfilment-process.md`, is itself an unverified
draft describing a deposit/delivery/installation flow — no contract text.

Before drafting, flagged two blocking ambiguities rather than guessing (§2b):
1. Which legal entity signs — Amfa Furniture Ltd (dormant) or the Fishbone Construction Ltd umbrella
   (NA-2, open since 2026-09-24)?
2. Reusable template, or for a specific deal (none exist)?

Minda decided: **Fishbone Construction Ltd**, reusable template, and to check for an existing
company/group template before inventing legal boilerplate. A subagent search (Explore) located the
Fishbone Construction Ltd KB, the Fishbone Group KB, and all seven company KB folder IDs, then found
Construction Ltd's own live **"Consumer Sales Contract.pdf"** (two copies: `FC Business Development/`
and `FC Company Documents/FC Contracts/`) — a real, in-use pro forma with the correct entity's
letterhead, VAT/bank details, deposit/balance table, Consumer Contracts Regulations 2013 cancellation
clause, and 26 numbered terms.

Read the PDF in full and adapted it:
- **Stripped** as construction-specific and not applicable to furniture: the "Lintels & Hidden
  Structural Items" clause block, and clause 22 ("condensation reduction is not guaranteed").
- **Carried over largely unchanged**: bespoke/made-to-order goods, title retention until paid in full,
  risk passing on installation, late-payment interest, liability cap, disputes, governing law,
  statutory-rights clauses, and the Consumer Contracts Regulations 2013 cancellation clause (directly
  relevant to bespoke furniture).
- **Adapted/generalised**: the technical-survey clause (removed "daylight" framing), the site-services
  clause (reworded for furniture fitting rather than construction trades), the "redecoration excluded"
  and "hidden defects" clauses (reworded as general, non-construction-specific carve-outs).
- **Left as placeholders, not invented**: Deposit 1 fixed sum and Deposit 2 percentage — unconfirmed
  anywhere (same gap flagged in `order-fulfilment-process.md` and `quote-pricing.md`); also flagged
  whether Amfa is covered by Construction's named dispute-resolution scheme.

**Done:**
- `Drafts/2026-10-07_template_amfa-furniture-sales-contract.md` created — marked **DRAFT — TEMPLATE,
  NOT FOR ISSUE**, with a cover note naming every open item and recommending legal review before any
  real use.
- **NA-2 resolved** on this basis (the contracting-entity half of the question): `CHARTER.md` §1
  "Serves", `Charter-Rules.md` §2 item 2, `open-issues.md` NA-2, and `Charter-History.md` all updated.
  Broader day-to-day branding mechanics beyond the contracting entity remain unspecified.
- `processed-items-ledger.md` row 10 added; `current-state.md` updated.

**Not done — carried forward:**
- No legal/solicitor review has happened — this is Nadia's own adaptation of an existing document, not
  a vetted contract.
- Deposit 1/Deposit 2 amounts still unconfirmed.
- NA-2's resolution hasn't been written back into the group registers or any sister KB — left for
  Minda/Victoria if it needs to be durable estate-wide.

**Files:** `Drafts/2026-10-07_template_amfa-furniture-sales-contract.md` (new); `CHARTER.md`,
`Charter-Rules.md`, `Charter-History.md`, `open-issues.md`, `current-state.md`,
`processed-items-ledger.md` (this KB, all archived-then-recreated). No write to the Amfa Furniture Ltd
KB, the CRM, or any customer-facing system; no file read or write in the Fishbone Construction Ltd KB
beyond the one PDF read.
