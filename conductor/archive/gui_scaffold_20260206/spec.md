# Specification: GUI Scaffold & Environment Reset

## Overview
Reset the `training-tracker-gui` repository to a barebones state, preserving only essential build and quality configurations. This establishes a clean foundation for incrementally replicating the Flask UI's functionality in React, mirroring the layered development approach used in the backend.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference Repository:** `training-tracker/` (Read-only reference for UI logic and structure).

## Functional Requirements
1. **Environment Cleanup:** 
    - Stash or remove existing functional components and views in `src/` to prevent interference with the new scaffold.
    - Preserve the directory structure in `src/` (e.g., `components/`, `views/`, `utilities/`, `types/`, `assets/`) but ensure files are minimal or empty.
2. **Configuration Retention:**
    - Maintain core build files: `package.json`, `bun.lock`, `vite.config.ts`, and `tsconfig.json`.
    - Maintain style/linting files: `.prettierrc` and `eslint.config.js`.
3. **Ignore Non-Essentials:** 
    - Ensure `.env` and `GEMINI.md` are excluded from the repository tracking via `.gitignore`.
4. **Minimal React Entry:** Establish a barebones entry point that confirms the environment is functional without implementing business logic.

## Non-Functional Requirements
- **Build Integrity:** The project must successfully compile using `bun run build` after the reset.
- **Linting Compliance:** The project must pass existing linting rules.

## Acceptance Criteria
- [ ] `training-tracker-gui/` is stripped of all previous UI logic.
- [ ] Core configuration files (build & style) are verified and present.
- [ ] `.gitignore` is updated to exclude environment and local meta files.
- [ ] A "Hello World" style React entry point is active and building.
