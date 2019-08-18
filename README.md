# "Batteries included" prototool pre-commit hook

Example `.pre-commit-config.yaml`:

```yaml
# See https://pre-commit.com.
repos:
  - repo: https://github.com/fiveai/pre-commit-prototool
    rev: master
    hooks:
      - id: "prototool:1.8.1"
        name: prototool lint
        args: ["lint"]
```

Links:

- https://github.com/uber/prototool
- https://pre-commit.com
