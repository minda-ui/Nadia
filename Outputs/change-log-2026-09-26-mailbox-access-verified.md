# Change log — 2026-09-26 — `enquiries@amfa.uk` access verified directly; NA-3 resolved, NA-5/NA-6 raised

Asked to check the Amfa KB Wiki for anything worth knowing. `Wiki/Processes/enquiry-to-order-pipeline.md`
claimed the owner authorised Nadia to read `enquiries@amfa.uk` directly as her main intake, superseded
2026-09-25 — directly contradicting this KB's own `CHARTER.md`/`open-issues.md` (NA-3: "not yet
connected", `create_draft`-only). Per §2b, flagged rather than guessed which was current, then — asked
to check it myself — verified against the system of record (Rule C) instead of just re-reading files.

**What was found**, via live `search_threads`/`list_labels` calls against `enquiries@amfa.uk`:

- The mailbox **is** connected. `CHARTER.md`'s "not yet connected" and `create_draft`-only description
  are stale.
- Working **read** access confirmed (inbox search and label listing both succeeded).
- 28 inbox threads exist; a `Nadia/Triaged` label already holds 24 of them — someone/something had
  already been triaging before this session found it.
- The 24 triaged threads are almost entirely fake test-form submissions from the amfa.uk website
  (obviously placeholder data: "name: Test", `sky@mail.com`, sequential fake phone numbers), Google
  security alerts, and Tilda (website builder) onboarding mail. **No real customer enquiries found** —
  the CRM sheet staying empty is still correct, not an oversight.
- One **untriaged** thread is substantive: a live account-opening exchange with **ECF**
  (`DavidStarling@ecf.co`) — a handles/hinges/runners/drawer-box/kitchen-door hardware supplier. A human
  ("Andrejus") already replied directly from this mailbox on 2026-09-22 (sent the company letterhead,
  requested brochures). Not logged anywhere in the Amfa KB (`Wiki/Suppliers/` is empty) or the CRM.

**What this doesn't settle:** whether Nadia is actually authorised for read-only access, read+draft, or
the broader "main intake" role the now-superseded Wiki note described — that's a standing-authority
question, not a technical one, and isn't resolved by checking the mailbox. Left open as NA-5.

**Done:**
- `open-issues.md` — NA-3 marked Resolved (mailbox connectivity, verified, not guessed); NA-5 (access-
  level conflict) and NA-6 (ECF thread vs. `quote-pricing.md`'s open supplier question) raised.
- `current-state.md` — snapshot updated to reflect the above.
- `processed-items-ledger.md` — row 3 added.

**Deliberately not done:** no label, reply, or draft touched the ECF thread or any other message; no
edit to the Amfa Furniture Ltd KB's Wiki (a `Wiki/Suppliers/` article would answer NA-6, but that's
outside the Orders/Customers/Processes sections this charter names, so left for a human call); `CHARTER.md`
and `Charter-Rules.md` themselves not rewritten this session — their stale connector/open-question text
should be refreshed once NA-5 is actually settled, not before.

**Files:** `open-issues.md`, `current-state.md`, `processed-items-ledger.md` (this KB, all three
archived-then-recreated). No write to `enquiries@amfa.uk`, the Amfa Furniture Ltd KB, or any Smartsheet
sheet.
