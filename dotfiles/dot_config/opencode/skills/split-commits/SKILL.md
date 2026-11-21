---
name: split-commits
description: Split the current working tree changes into several logical commits, then use the commit skill to write each message. Use when the user asks to split, group or organize changes into commits, or has many unrelated changes to commit.
---

# Split commits

Turn a pile of changes into a clean series of small commits. Answer in the user's language.

## 1. Inspect

Run `git status` and `git diff` (and `git diff --staged` if something is already staged). Read the changes, not just the file names. Note any untracked files. If the tree is clean, say so and stop.

## 2. Plan

Group the changes into commits where each one is a single logical change that makes sense on its own:

- One purpose per commit (a feature, a fix, a refactor, a config change), not one per file.
- Keep a change together with what it needs to work (code and its config or tests).
- Separate unrelated changes, even in the same file.
- Order the commits so each one leaves the repo working, and so a commit comes after what it depends on.
- Flag files that should not be committed (secrets, build output, editor files) and leave them out.

Show the plan as a numbered list: for each commit, a one-line summary, the files, and any file that must be split by hunk. **Ask the user to confirm or adjust the plan before touching the index.**

## 3. Execute, one commit at a time

For each commit in the plan:

1. Make sure the index is empty, or contains only this commit's changes.
2. Stage exactly this commit's changes:
   - whole files: `git add <paths>`
   - part of a file: save the file's diff, keep only the wanted hunks, and apply it with `git apply --cached`. Interactive `git add -p` does not work here.
3. Check `git diff --staged` shows only what the plan says.
4. Call the Skill tool with `commit` to write the message and commit it. The commit skill asks for confirmation; approval covers that single commit.
5. Move to the next one.

If the user rejects a message, fix it and ask again. If they change the plan mid-way, update it and show the remaining commits.

## 4. Finish

Show `git log --oneline` for the new commits and `git status` to confirm nothing was left behind or forgotten. Do not push.

## Rules

- Never commit without the user's confirmation, even if the plan was approved.
- Do not rewrite history (no amend, rebase or reset) unless the user asks.
- Do not stage everything with `git add -A` or `git add .`.
- If a split is risky or unclear (heavily entangled hunks), say so and propose a simpler grouping instead of forcing it.
