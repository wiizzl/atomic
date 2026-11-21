---
name: commit
description: Write a conventional commit message for the current changes and commit them after confirmation. Use when the user asks to commit, or to write or suggest a commit message.
---

# Commit

1. Inspect the changes with `git status` and `git diff` (staged changes first; if nothing is staged, look at the unstaged diff and ask what to stage).
2. Write the commit message following the rules below.
3. Show the message and ask for confirmation before running `git commit`. Approval covers that single commit only.

## Format

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

## Types

- **feat**: a new feature
- **fix**: a bug fix
- **docs**: documentation only
- **style**: formatting only, no change in meaning
- **refactor**: neither a fix nor a feature
- **perf**: performance improvement
- **test**: add or correct tests
- **build**: build system or external dependencies
- **ci**: CI configuration and scripts
- **chore**: anything else that does not touch src or tests
- **revert**: reverts a previous commit

## Rules

1. Subject line under 50 characters.
2. Imperative mood ("add", not "added" or "adds").
3. Do not capitalize the first letter of the description.
4. No trailing period on the subject.
5. The body explains what and why, not how.
6. Blank line between subject and body; wrap the body at 72 characters.
7. Scope is lowercase, specific but concise (`auth`, `api`, `ui`, `db`); omit it when changes span multiple areas.
8. Add `BREAKING CHANGE: <description>` as a footer if applicable.
9. Focus on intent and impact rather than implementation details.
10. Never mention AI or code generation tools in the message.

## Examples

```
feat(auth): add OAuth2 integration for Google login

fix(api): handle null response in user profile endpoint

docs: update installation instructions in README

refactor(utils): simplify date formatting helper functions

chore(deps): update dependencies to latest versions
```
