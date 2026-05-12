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
frontend/
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
  --var DOMAIN="parking operations" \
  --var STACK="Quarkus 3.x, Java 21, PostgreSQL" \
  --var API_STYLE="REST commands and queries over HTTP" \
  --var TESTING="JUnit 5, Cucumber, Testcontainers" \
  --var LANG="en"
```

### Frontend pack

```bash
npx --yes create-spec-driven-app@0.1.0-beta.2 expand \
  --pack-root "$PACK_ROOT" \
  --pack frontend \
  --project-dir ./smart-parking-ui \
  --var PROJECT_NAME="Smart Parking Frontend" \
  --var PROJECT_SLUG="smart-parking-ui" \
  --var DOMAIN="parking operations" \
  --var STACK="React 18, TypeScript, Vite" \
  --var API_STYLE="REST commands and queries over HTTP" \
  --var TESTING="Vitest, React Testing Library, Playwright" \
  --var LANG="en"
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
  --var STACK="Quarkus 3.x, Java 21, PostgreSQL" \
  --var API_STYLE="REST commands and queries over HTTP" \
  --var TESTING="JUnit 5, Cucumber, Testcontainers" \
  --var LANG="en" \
  --dry-run
```

```bash
npx --yes create-spec-driven-app@0.1.0-beta.2 expand \
  --pack-root . \
  --pack frontend \
  --project-dir /path/to/generated-frontend-project \
  --var PROJECT_NAME="Smart Parking Frontend" \
  --var PROJECT_SLUG="smart-parking-ui" \
  --var DOMAIN="parking operations" \
  --var STACK="React 18, TypeScript, Vite" \
  --var API_STYLE="REST commands and queries over HTTP" \
  --var TESTING="Vitest, React Testing Library, Playwright" \
  --var LANG="en" \
  --dry-run
```

## Versioning

Use Git tags to pin stable pack versions, for example:

```bash
git tag v0.1.0
git push origin v0.1.0
```
