# Implementation Plan: GUI Scaffold & Environment Reset

This plan outlines the steps to reset the `training-tracker-gui` repository to a barebones state, preserving only essential configuration files and establishing a clean React entry point.

## Phase 1: Environment Cleanup & Configuration (Upkeep) [checkpoint: 7274b37]
Focus on removing existing functional code and ensuring the project structure is clean while maintaining build integrity.

- [x] Task: Conductor - Stash existing functional code and views
    - [ ] Run `git stash` or move existing files in `src/` to a temporary directory outside the project.
    - [ ] Preserve the `src/` directory structure: `components/`, `views/`, `utilities/`, `types/`, `assets/`.
- [x] Task: Verify and update `.gitignore`
    - [ ] Ensure `.env` and `GEMINI.md` are listed in `.gitignore`.
    - [ ] Verify that sensitive or local-only files are not tracked.
- [x] Task: Maintain core build and style configurations
    - [ ] Verify `package.json`, `bun.lock`, `vite.config.ts`, and `tsconfig.json` are present and correct.
    - [ ] Verify `.prettierrc` and `eslint.config.js` are present and correct.
- [x] Task: Establish CI pipeline with GitHub Actions
    - [ ] Create `.github/workflows/ci.yml` mirroring the backend's rigor (Lint, Type Check, Build).
- [x] Task: Conductor - User Manual Verification 'Phase 1: Environment Cleanup & Configuration (Upkeep)' (Protocol in workflow.md) [7274b37]

## Phase 2: Barebones React Entry Point [checkpoint: 36c05fd]
Establish a minimal, functional React application structure.

- [x] Task: Create minimal `index.tsx` and `App.tsx`
    - [ ] Create a basic `App.tsx` that renders a "Training Tracker GUI - Scaffold" message.
    - [ ] Create a clean `index.tsx` (entry point) using `createRoot`.
- [x] Task: Verify build and linting
    - [ ] Run `bun run build` to ensure the scaffold compiles.
    - [ ] Run `bun run lint` to ensure compliance with existing rules.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Barebones React Entry Point' (Protocol in workflow.md) [36c05fd]
