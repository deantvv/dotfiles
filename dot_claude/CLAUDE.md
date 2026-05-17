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
