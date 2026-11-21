---
name: debug
description: Disciplined diagnosis loop for hard bugs and performance regressions. Use when the user says "debug this" or "diagnose", or reports something broken, throwing, failing or slow.
---

# Debug

Build a reliable signal for the bug first, then reason. Do not theorize from reading code before the loop exists. Answer in the user's language.

Redact every secret in commands and outputs you show (`<REDACTED>`). Pass credentials through env vars.

## 1. Feedback loop

Get one command that goes red on this exact bug. Try, in order: a failing test at the right seam, a script (curl, CLI with a fixture), a replay of a captured input, a throwaway harness, a property or fuzz loop, `git bisect run` if the bug appeared between two known states. If a human must act, ask them for one specific step and the output.

Done when you have run the command at least once and it is:

- [ ] red on the user's exact symptom, not on a nearby failure
- [ ] deterministic (for flaky bugs: loop it until the failure rate is high)
- [ ] fast (seconds)
- [ ] runnable by you without help

If you cannot build a loop, say so, list what you tried, and ask for access, a captured artifact (log, HAR, dump) or permission to add instrumentation. Do not go further without one.

## 2. Reproduce and minimise

Run it, confirm it shows the symptom the user described, then remove inputs, config and steps one at a time until every remaining piece is needed for the failure.

## 3. Hypothesise

Write 3 to 5 ranked, falsifiable hypotheses: "If X is the cause, then changing Y makes the bug disappear." Show the list to the user before testing; they often know something that re-ranks it. Do not block if they are away.

## 4. Instrument

One variable at a time, each probe tied to a hypothesis. Prefer a debugger or REPL, then targeted logs. Tag every debug log with a unique prefix such as `[DEBUG-a4f2]`. For performance, measure a baseline first instead of logging.

## 5. Fix and lock it

If a seam exists where a test reproduces the real bug pattern, turn the minimal repro into a failing test, watch it fail, fix, watch it pass, then re-run the original loop. If no such seam exists, say so: that is a finding about the codebase.

## 6. Cleanup

- [ ] original loop no longer fails
- [ ] regression test passes, or the missing seam is noted
- [ ] all tagged debug logs removed (grep the prefix)
- [ ] throwaway scripts deleted
- [ ] the confirmed cause is stated in the final answer, and offered for the commit message
