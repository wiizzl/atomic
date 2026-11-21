---
name: grill-me
description: Get interviewed about a plan, decision or idea until every open question is settled.
disable-model-invocation: true
---

# Grill me

Interview the user until you share the same understanding. Treat the plan as a tree of decisions where each answer opens or closes others. Answer in the user's language.

## Rounds

The **frontier** is every decision whose prerequisites are already settled. Ask the whole frontier in one round, then wait for the answers before the next round. A question that depends on another still-open question belongs to a later round.

Format each question like this, worded so that "yes" accepts your recommendation:

```
**Q1 - <short title>**: <the question, with options if relevant>

Recommended: <your answer and the reason in one line>
```

## Rules

- Look up facts yourself (files, config, docs, command output). Ask the user only for decisions and preferences.
- Always give a recommended answer. If the user says "ok" or "yes", it is settled.
- After each round, recompute the frontier from the new answers.
- Do not start implementing during the interview.

## Done

The frontier is empty and nothing is silently assumed. Give a short summary of the decisions taken and ask the user to confirm before acting.
