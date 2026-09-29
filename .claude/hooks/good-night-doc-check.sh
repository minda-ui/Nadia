#!/bin/bash
# UserPromptSubmit hook — sign-off documentation reminder.
#
# When the user's message reads as a sign-off ("good night", "goodnight",
# "night", "see you tomorrow", ...), inject a reminder to verify today's work
# is logged before the session ends, per Charter-Rules.md discipline: an
# Outputs/ change-log entry, a processed-items-ledger.md row, current-state.md
# updated, archive-then-recreate + byte-verify, pushed to git and Drive.
#
# No-op (no output) on every other prompt.
set -uo pipefail

input=$(cat)
prompt=$(printf '%s' "$input" | jq -r '.prompt // empty')

if printf '%s' "$prompt" | grep -qiE '\b(good ?night|goodnite|nighty ?night|see you tomorrow|signing off|that'"'"'s (it|all) for (today|tonight))\b'; then
  cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"Sign-off detected. Before ending the session: verify today's work is documented — an Outputs/ change-log entry, a processed-items-ledger.md row, current-state.md updated to reflect the session, archived-then-recreated + byte-verified, and pushed to git and Drive (Charter-Rules.md discipline). If anything from this session is missing, log it now before saying good night."}}
EOF
fi

exit 0
