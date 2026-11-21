---
name: roadmap
description: Produce a concise roadmap of what has been done so far in the session and what remains. Use when the user asks for a roadmap, a recap, a status, "where are we" or "what's left".
---

# Roadmap

Summarize progress from what is already in the conversation and the repo. Do not re-investigate or redo work. Run read-only commands (`git status`, `git diff --stat`, `git log`) only if the conversation does not already tell you the state. Answer in the user's language.

## Output

Keep the whole answer short, one line per item, no prose around it.

```
## Goal
<one sentence>

## Done
- [x] <step> — <result or file, if useful>

## Remaining
- [ ] <step>

## Next
<the single next action, or "nothing left">
```

## Rules

- Only list steps that were actually completed and verified. Mark attempted-but-unconfirmed work as remaining and say what is unconfirmed.
- Merge small related actions into one step. Aim for at most 8 items per list.
- Remaining steps must come from the goal or from things the user asked for. Do not invent extra work; put optional ideas on a single "Optional" line at the end, only if relevant.
- Flag blockers or open questions for the user on a "Blocked" line, only if there are any.
- If nothing remains, omit the Remaining section and say the goal is complete.
- Do not modify files, and do not commit.
