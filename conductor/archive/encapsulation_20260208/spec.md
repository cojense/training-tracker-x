# Track Specification: Submodule Encapsulation and Orchestration

## Overview
This track focuses on making the `training-tracker` (backend) and `training-tracker-gui` (frontend) submodules completely encapsulated and portable. Currently, hardcoded home directory paths and missing infrastructure artifacts (like a frontend Dockerfile) hinder local setup on new environments and complicate AWS deployment. We will implement standardized setup scripts, containerize the frontend, and provide a root-level orchestration script for seamless development.

## Functional Requirements
- **Standardized Local Setup**:
    - Both submodules must have a `run.bash` script for native execution (Backend: Python/Flask, Frontend: Bun/React).
    - Hardcoded home-relative paths (`~/...`) in the backend `run.bash` and `docker-compose.yml` must be replaced with project-relative paths (`./...`).
- **Frontend Containerization**:
    - Create a multi-stage `Dockerfile` for `training-tracker-gui` (Bun build -> Nginx) modeled after the current deployment patterns in the backend (ref: `3f4d70d`).
- **Root Orchestration**:
    - A root-level `run.bash` script that delegates to submodule `run.bash` scripts.
    - Support for flags: `--backend`, `--gui`, and `--all`.
    - Default behavior (no flags) should start both submodules simultaneously.
- **Documentation**:
    - Root-level `README.md` with high-level architecture, orchestration commands, and sync details.
    - Submodule-level `README.md` files with essential, minimal starting steps.
- **AWS Readiness**:
    - Update `docker-compose.yml` at the root to include the new frontend service.
    - Ensure environment variable handling is consistent across local and containerized runs.

## Non-Functional Requirements
- **Portability**: The project must be cloneable and runnable on a clean local environment (with Bun/Docker/Python installed) without manual path adjustments.
- **Simplicity**: Documentation should follow the established minimal style of the existing backend documentation.

## Acceptance Criteria
- [ ] `training-tracker/run.bash` no longer contains `~/` paths.
- [ ] `training-tracker-gui/run.bash` successfully starts the Vite development server using Bun.
- [ ] `training-tracker-gui/Dockerfile` exists and builds successfully.
- [ ] Root `run.bash` successfully launches both services when run with `./run.bash --all` or without arguments.
- [ ] Root `docker-compose up` builds and starts both the Flask API and the containerized React GUI.
- [ ] Root `README.md` contains clear headers and code blocks for all startup methods.

## Out of Scope
- Migrating the local SQLite database to AWS RDS (this remains a documentation point rather than an implementation task for this track).
- Actual deployment to AWS infrastructure (only ensuring the *artifacts* are ready).
- **Implementation or progress on existing tracks**: `file_lifecycle_20260206` and `user_detail_parity_20260206`. These are deferred until this encapsulation track is complete.
