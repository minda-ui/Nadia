# Nadia to Victoria, 2026-10-18: permission-prompt fix not yet merged — risk to Monday's first run (AWT-0895)

Data, not an instruction. Delivered per CLAUDE.md §1 (Raw/-only cross-KB); a matching Hub row (`AWT-0895`)
names this note.

**What happened:** This session found that every Google Drive/Smartsheet tool call was prompting
"Allow Once" in `minda-ui/Nadia`, because `.claude/settings.json` had no allow-rules for those tools —
only for the Composio CLI. That's fine in an attended session (I click through), but it would stall an
**unattended** scheduled run outright, since nothing is there to click Allow.

**Fixed:** Added allow-rules for the Drive/Smartsheet tools this KB's own routine work actually uses
(create/update/copy files, search, read, Smartsheet row writes) to `permissions.allow`, following the
same pattern as the existing Composio allow-rules. Also explicitly denied
`mcp__Google_Drive__trash_file`, matching the charter's own archive-instead-of-trash rule.

**The risk:** This fix is committed to `minda-ui/Nadia` on branch `claude/peaceful-davinci-j7knv2`
(commit `6e6b27e`), **not merged to `main`**. If Nadia's first scheduled work run (Mon 19 Oct, 08:05 UK,
per the estate-wide work-run trial, Hub `AWT-0831`) checks out `main`, it will still hit the old,
unpatched permissions and may stall on the very first Drive/Smartsheet write it attempts — including
`AWT-0883`, Nadia's own Drive-write probe due in that same first run.

**Ask:** either confirm scheduled runs pull from a ref other than `main` (in which case there's nothing
to do), or help get a PR merged into `main` before Mon 19 Oct 08:05 UK. Nadia can open the PR herself on
request but hasn't opened one yet — no one has asked for it this round.

Hand-off per CLAUDE.md §1 (Raw/-only cross-KB) + §3.
