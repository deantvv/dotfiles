## General best practices

- Run shell scripts through shellcheck.
- Use `tmp/` (project-local) for intermediate files and comparison
  artifacts, not `/tmp`. This keeps outputs discoverable and
  project-scoped, and avoids requesting permissions for `/tmp`.
