# Parking Management SpecOps Pack

Versioned SpecOps domain pack for Parking Management projects.

This repository contains reusable domain knowledge for creating Spec-Driven Development projects with DDD Lite artifacts:

- requirements
- bounded contexts
- use cases
- commands / queries
- aggregates
- value objects
- domain events
- Gherkin acceptance scenarios
- rich traceability metadata

## Pack Layout

```text
backend/
  pack.yaml
  templates/
    AI_RULES.md.tpl
    spec.md.tpl
    features/
```

## Usage

From a generated SDD project workspace:

```bash
PACK_REPO="https://github.com/rsaglobaltech/parking-management-specops.git"
PACK_ROOT="./.specops-packs/parking-management"

if [ ! -d "$PACK_ROOT/.git" ]; then
  git clone "$PACK_REPO" "$PACK_ROOT"
else
  git -C "$PACK_ROOT" pull --ff-only
fi

npx --yes create-spec-driven-app@0.1.0-beta.2 expand \
  --pack-root "$PACK_ROOT" \
  --pack backend \
  --project-dir ./smart-parking \
  --var PROJECT_NAME="Smart Parking Backend" \
  --var PROJECT_SLUG="smart-parking" \
  --var DOMAIN="parking operations"
```

## Validation

```bash
npx --yes create-spec-driven-app@0.1.0-beta.2 expand \
  --pack-root . \
  --pack backend \
  --project-dir /path/to/generated-project \
  --var PROJECT_NAME="Smart Parking Backend" \
  --var PROJECT_SLUG="smart-parking" \
  --var DOMAIN="parking operations" \
  --dry-run
```

## Versioning

Use Git tags to pin stable pack versions, for example:

```bash
git tag v0.1.0
git push origin v0.1.0
```
