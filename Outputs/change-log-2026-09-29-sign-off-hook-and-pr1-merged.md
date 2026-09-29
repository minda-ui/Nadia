# Change log — 2026-09-29 — Sign-off documentation-check hook added; PR #1 opened and merged

**What happened:**
- Added a `UserPromptSubmit` hook, `.claude/hooks/good-night-doc-check.sh`: when the user's message
  reads as a sign-off ("good night", "goodnight", "see you tomorrow", "signing off", "that's it/all for
  today/tonight"), it injects a reminder into context to verify the session's work is logged — an
  `Outputs/` change-log entry, a `processed-items-ledger.md` row, `current-state.md` updated,
  archive-then-recreate + byte-verify, pushed to git and Drive — before the session ends. No-op on every
  other prompt. Pipe-tested against matching and non-matching prompts before wiring into
  `.claude/settings.json`.
- Opened `minda-ui/Nadia#1` — this KB's git mirror covering the 2026-09-27 session's work (Rule F
  adoption into `Charter-Rules.md`, the `external-source-register.md` NASRC-6 correction, the Composio
  CLI install + login, and the new sign-off hook). Merged into `main` the same day (2026-09-29).

**Done:** `processed-items-ledger.md` row 7 added; `current-state.md` snapshot updated.

**Not done — carried forward:** toolkit linking (Gmail on `enquiries@amfa.uk`, Google Drive) from the
Composio rollout (ledger row 6) — still not started.

**Files:** `.claude/hooks/good-night-doc-check.sh`, `.claude/settings.json` (git mirror, via PR
`minda-ui/Nadia#1`, merged); `processed-items-ledger.md`, `current-state.md` (this KB, both
archived-then-recreated).
