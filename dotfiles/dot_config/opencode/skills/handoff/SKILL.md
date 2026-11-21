---
name: handoff
description: Compact the current conversation into a handoff document so a fresh session can continue the work. Use when the user asks for a handoff or wants to continue in a new session.
argument-hint: "What will the next session be used for?"
disable-model-invocation: true
---

# Handoff

Write a document that lets a fresh agent continue this work without the conversation. Answer in the user's language.

## Content

- **Goal**: one or two sentences.
- **State**: what is done and what remains (as in the `roadmap` skill, but only the essentials).
- **Decisions**: choices made and the reason, especially rejected options so they are not re-debated.
- **Gotchas**: pitfalls found, commands that matter, things already tried that failed.
- **Next**: the first action to take.
- **Skills**: the skills the next agent should load.

## Rules

- Do not copy what already exists elsewhere (specs, commits, diffs, files). Point to it by path or URL.
- Redact secrets and personal information.
- Keep it under one page.
- Save it to `$TMPDIR` (else `/tmp`), not to the working directory, and give the full path.
- If the user passed an argument, tailor the document to what the next session will do.
