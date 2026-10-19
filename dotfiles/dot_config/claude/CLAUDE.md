# Global instructions

## Git

- Always ask me before running a git command that changes anything: commit, amend, push, pull, fetch, merge, rebase, cherry-pick, reset, restore, checkout or switch, stash, and creating or deleting branches and tags. Read-only commands (`status`, `diff`, `log`, `show`, `blame`) need no confirmation.
- Ask again for each operation: approving one commit or push does not cover the next one.
- Write commit messages following `~/.config/git/commit-prompt.txt`: Conventional Commits types and scopes, an imperative lowercase subject under 50 characters with no trailing period, and a body wrapped at 72 characters that explains what and why. Skip its "Output Requirements" section, which is meant for the standalone message generator.
- Never mention AI or code generation tools in commit messages, and add no `Co-Authored-By` trailers.
