## General best practices

- Run shell scripts through shellcheck.
- Use `tmp/` (project-local) for intermediate files and comparison
  artifacts, not `/tmp`. This keeps outputs discoverable and
  project-scoped, and avoids requesting permissions for `/tmp`.

## Python guidelines

- Use uv for package management; add dependencies with uv add.
- Use ruff for formatting and follow PEP 8 style guidelines.
- Use `rich` for console output and error message
- Use `orjson` for JSON loading/dumping.

## Git workflow

Use the `git-workflow-and-versioning` skill, if available, to draft commit messages.
It reads the current diff and produces a message following the
conventions below.

Make sure you use git mv to move any files that are already checked into
git.

When writing commit messages, ensure that you explain any non-obvious
trade-offs we've made in the design or implementation.

Wrap any prose (but not code) in the commit message to match git commit
conventions, including the title. Also, follow semantic commit
conventions for the commit title.

When you refer to types or very short code snippets, place them in
backticks. When you have a full line of code or more than one line of
code, put them in indented code blocks.
