---
name: report-back
description: Use this skill whenever Nadia needs to report back, acknowledge, or close the loop with another AI employee (Victoria, Alex, Eugene, Anna, Peter, Rachel, John, Darius, Helen, or anyone else in the estate) after reading or processing a Raw/-hand-off note or broadcast from them — especially when no Hub Tasks & Requests row explicitly assigned a response, so it would otherwise go silently unacknowledged. Trigger on phrases like "report back", "let them know", "acknowledge this to X", "tell X I've done it", "close the loop with X", or whenever the user asks whether Nadia has responded to something someone else sent. Also reach for this proactively right after adopting an estate-wide convention or charter change that came from another employee's Raw/ note, even if nobody explicitly asked for an acknowledgment — a change nobody confirmed receiving is a change the sender can't be sure landed.
---

# Report back to another AI employee

Every employee in the Fishbone estate keeps their own Drive-based knowledge base (KB), and the
only sanctioned channel between KBs is each employee's own `Raw/` folder — never a direct edit of
someone else's governed files (`CHARTER.md`, `Charter-Rules.md`, their control files). This mirrors
Nadia's own `Charter-Rules.md` rule: *"Cross-KB amendments go through `Raw/`, never a direct edit."*
That rule runs in both directions — it's also how Nadia tells someone else that their note landed.

A Hub `AWT-<n>` row assigned to Nadia is the normal signal that a response is expected. But not
every Raw/ note comes with one — a broadcast like Victoria's "how we work on projects" handoff can
simply say "use the rules from today," with nothing to close out on the Hub. That's not the same as
nothing being owed: the sender still doesn't know whether their note was read, understood, or acted
on, unless Nadia tells them. This skill is for exactly that gap.

## Before writing anything: verify, don't assume

Per Rule C (verify against the system of record before reporting status), check directly whether a
Hub row already exists asking for a response, rather than assuming either way:

```
get_sheet_summary(sheet_id=8860839228606340, filters=[
  {"columnName": "Assigned to", "columnValue": "Nadia", "operator": "EQUAL"}
])
```

If a row exists and names what it wants, follow Rule A instead (flip to `In Progress`, work it,
close it with a `Response` on that row) — this skill is for the case where no row exists, or the
row exists but doesn't cover reporting back to the *sender specifically*.

## Find the sender's KB and Raw/ folder

Search Drive for the sender's KB folder by title — the pattern across the estate is
`"<Name> - <Role>"` (e.g. `"Victoria - CEO's Assistant"`, `"Alex - ..."`). Once found, look inside
it for a `Raw/` subfolder (every employee KB has one, parallel to Nadia's own). Don't guess the
folder ID from memory across sessions — Drive IDs aren't predictable and a stale one silently
writes nowhere useful.

## Write the note

Create one Markdown file directly in the sender's `Raw/` folder (never anywhere else in their KB).

**Filename:** `YYYY-MM-DD_Handoff_Nadia-to-<SenderName>_<short-description>.md` — today's date, not
the date of the original note being answered.

**Opening line**, matching the house convention used across the estate for Raw/-hand-offs:

> _Dropped in your Raw/ per the estate's Raw/-only cross-KB channel. From Nadia. Informational — no
> action needed._

Drop the "no action needed" framing only if something genuinely is still needed from the sender —
don't let the template say something untrue.

**Body** — keep it to what Rule D (plain-brief) asks for: lead with the answer, cut filler. Cover,
in whatever order reads naturally:
- What was read (name the note/handoff being answered).
- What Nadia did as a result — which of her own files changed, which didn't, which was
  deliberately left alone and why.
- What's still open or not yet actionable, and who it's waiting on (never invented — if the
  original note named open questions, repeat them rather than resolving them here).

Don't pad this into a status report nobody asked for. A few sentences is usually enough; match the
length of the thing being acknowledged.

## Log it in Nadia's own KB

A report-back is itself a processed item, so it gets the same treatment as everything else in
`CHARTER.md` §3 "How Nadia works":

1. Add a new row to `processed-items-ledger.md` — archive the current file to `Archive/` with the
   `(archived YYYY-MM-DD HHMM, superseded by ...)` naming convention, edit the working copy, keep
   `Beat` as `Governance` (or whatever fits), and name the sender's `Raw/` folder in "Files/systems
   touched" rather than this KB's own `Raw/`, since nothing changed there.
2. Update `current-state.md`'s "Last session" line to mention the report-back, and bump the "Items
   done" count.
3. If the report-back is substantial enough to warrant its own write-up (it usually isn't — most
   report-backs are a short addendum to whatever change-log entry already covers the underlying
   work), a dated `Outputs/` change-log entry is the place for it; otherwise folding it into the
   existing entry for that day is fine.

Archive-then-recreate + byte-verify applies here exactly as it does everywhere else in this KB:
rename the old file into `Archive/`, upload the new one, and compare file sizes (or a checksum) to
confirm the Drive copy matches the local one byte-for-byte before moving on.

## Sync and push

Upload every file touched in Drive (the archived-then-recreated standing files, and if a new
Outputs entry was written, that too) to Nadia's own KB folder, byte-verify each one, then commit and
push to the git mirror on whichever branch is currently in use. This is one more working-tree change
like any other session's — it doesn't need its own branch or PR unless the user asks for one.

## What this skill does not do

- It never edits another employee's `CHARTER.md`, `Charter-Rules.md`, or any other governed file —
  only their `Raw/` folder.
- It never closes a Hub row on the sender's behalf, and never puts a new row on the Hub unless the
  report-back itself surfaces a genuine open question that belongs there.
- It never guesses at open questions the original note left unresolved — repeat them as still open,
  don't resolve them just to make the report-back feel more complete.
