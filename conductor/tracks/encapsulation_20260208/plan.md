# Implementation Plan: Submodule Encapsulation and Orchestration

This plan outlines the steps to ensure full encapsulation of the `training-tracker` and `training-tracker-gui` submodules, standardize local setup scripts, and provide project-wide orchestration.

## Phase 1: Backend Portability Fixes
Standardize the backend setup to remove environment-specific paths and align container configuration.

- [~] Task: Update `training-tracker/run.bash` to use project-relative paths (replace `~/` with `./`).
- [ ] Task: Update `training-tracker/docker-compose.yml` volume mounts to use project-relative paths.
- [ ] Task: Verify backend native execution with `./run.bash`.
- [ ] Task: Verify backend container execution with `docker-compose up`.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Backend Portability' (Protocol in workflow.md)

## Phase 2: Frontend Encapsulation and Dockerization
Create the necessary artifacts for the frontend to be self-contained and ready for containerized deployment.

- [ ] Task: Create `training-tracker-gui/run.bash` to launch the Bun dev server.
- [ ] Task: Create `training-tracker-gui/Dockerfile` using a multi-stage Bun/Nginx build (referencing backend deployment patterns).
- [ ] Task: Create a minimal `training-tracker-gui/README.md` with startup steps.
- [ ] Task: Verify frontend native execution with `./run.bash` inside the submodule.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Frontend Encapsulation' (Protocol in workflow.md)

## Phase 3: Project-Wide Orchestration
Implement the root-level scripts and documentation to tie the submodules together.

- [ ] Task: Create the root-level `run.bash` supporting `--backend`, `--gui`, `--all`, and default simultaneous execution.
- [ ] Task: Update root `docker-compose.yml` to include the `training-tracker-gui` service.
- [ ] Task: Create root-level `README.md` with comprehensive setup and architecture documentation.
- [ ] Task: Verify combined orchestration via root `./run.bash --all`.
- [ ] Task: Verify combined container orchestration via root `docker-compose up`.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Project Orchestration' (Protocol in workflow.md)
