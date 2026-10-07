# Change log — 2026-10-07 — Composio Gmail connection linked and verified

**What happened:** Continued the Composio rollout's Gmail step. The `nadia-gmail` link from 2026-09-29
(PR #3) and the `nadia-gmail-v2` link from 2026-09-30 (sent, URL never opened) both expired unauthorized.
Sent a fresh link, **`nadia-gmail-v3`**; Minda authorised it this time, as `enquiries@amfa.uk` specifically
(flagged the account-picker risk beforehand).

Verified directly rather than trusting the `ACTIVE` status label (Rule C): `GMAIL_GET_PROFILE` returned
`emailAddress: "enquiries@amfa.uk"` — the correct mailbox, not `minda@fishboneconstruction.co.uk` — with
47 messages / 36 threads. Did not attempt a send/delete/reply call to test the `.claude/settings.json`
deny rules (added 2026-09-29, PR #3) — never deliberately exercise a forbidden action, even to confirm
it's blocked.

**Done:** Gmail on `enquiries@amfa.uk` reachable via Composio, confirmed against the correct mailbox.
`processed-items-ledger.md` row 9 added; `current-state.md` updated.

**Not done — carried forward:**
- Two stray expired Gmail links (`nadia-gmail`, `nadia-gmail-v2`) and two stray expired Drive links
  (`nadia-googledrive`, `nadia-gdrive-test1`) remain in Composio — cleanup still needs Minda's own
  interactive terminal (`composio connections remove <alias>`).
- No write verified yet through either Composio connection (Drive or Gmail) — only reads confirmed so
  far (proposal step 5 still open).
- The earlier Composio Drive-verification commit (ledger row 8, `23303f0`) is still unmerged on
  `claude/peaceful-davinci-j7knv2` — this session's commit goes on the same branch.

**Files:** `Outputs/change-log-2026-10-07-composio-gmail-verified.md`, `current-state.md`,
`processed-items-ledger.md` (this KB, both archived-then-recreated). No write to `enquiries@amfa.uk`,
Drive, or any Smartsheet.
