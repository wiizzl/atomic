---
name: retro
description: Retrospective on a coding session that suggests improvements to the agent's environment so future sessions go faster. Use when the user asks for a retro or how to avoid repeating this.
disable-model-invocation: true
---

# Retro

Suggest improvements to the agent's **environment** (not the code) so the same work costs less next time. Answer in the user's language. Do not edit anything; present candidates and let the user choose.

## Steps

1. Read the session (the current conversation unless the user names another) and note where time or tokens went: searching for files, repeated explanations, mistakes, retries, questions the user had to answer twice.
2. For each finding, pick the cheapest category below.
3. Present the candidates, most severe first, one line of evidence each, with the concrete change proposed.

## Categories

- **Navigation**: the right file took long to find. Add a pointer (one line in `AGENTS.md`/`CLAUDE.md` or a README) to where it lives.
- **Skill**: a procedure was explained or reasoned out more than once. Propose a new skill, or an edit to an existing one.
- **Automated check**: a mistake a linter, type check, test or hook could have caught. Look at what the repo already has before proposing a new one.
- **Instructions**: steering files that are long, ignored, or contain things the agent would do anyway. Propose removing or shortening them. Move rules that a deterministic check could enforce out of prose.
- **Tool economy**: expensive or noisy tool calls that could be narrower or scripted.
- **Information access**: a fact the agent lacked (logs, docs, permissions) that it could be given.

## Rules

- Steering files that always load (`AGENTS.md`, `CLAUDE.md`) stay tiny: pointers, not content. Put detail in skills or docs.
- Prefer a check over a rule, and a rule over a reminder.
- Propose nothing without evidence from the session.
