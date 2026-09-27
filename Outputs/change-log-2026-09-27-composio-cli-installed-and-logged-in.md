# Change log — 2026-09-27 — Composio CLI installed and logged in; toolkit linking paused for the night

Continuation of the Composio-rollout proposal (`Raw/2026-09-27_Proposal_Composio-Rollout.md`, from
Alex, Minda-approved). Prerequisite already met: `.claude/settings.json` on this branch already carried
the `composio execute *` / `composio connections remove *` / `composio link *` permission rule.

**Done:**
- CLI installed, pinned: `curl -fsSL https://composio.dev/install | sh -s -- @composio/cli@0.4.1` —
  binary present and functional (`composio --version` → `0.4.1`).
- `composio login --no-browser --no-wait` → URL sent to Minda; `composio login --poll` completed.
  `composio whoami` confirms: `minda@fishboneconstruction.co.uk`, org `minda_workspace`.

**Not done — blocked, needs a decision:** `composio setup` (the Claude Code plugin/skill integration
piece of the installer) was refused by this environment's auto-mode classifier (`Unauthorized
Persistence` — it writes persistent local config beyond what `.claude/settings.json` pre-approves).
Not retried per the classifier's own instructions. Doesn't block CLI use (`composio link`/`composio
execute`) — only the optional Claude Code skill integration. If Minda wants this, it needs its own
permission rule or manual setup, not a retry from this session.

**Paused for the night, not started:** step 3 of the checklist — linking toolkits (Gmail on
`enquiries@amfa.uk`, Google Drive) as `nadia-<toolkit>`. Each opens its own OAuth flow; picking up
tomorrow from here.

**Files:** none in this KB changed by the Composio work itself (login/whoami are account-side, not a
Drive/git write); this change-log entry plus `current-state.md`/`processed-items-ledger.md` updated to
record it.
