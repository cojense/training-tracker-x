# Implementation Plan: Endpoint Alignment and Configuration Centralization

This plan outlines the steps to centralize environment configuration, standardize ports and domains, and ensure full functional parity between the Flask backend and React frontend.

## Phase 1: Environment Configuration & Centralization
Focus on removing hardcoded values and establishing a single source of truth for environment settings.

- [x] Task: Create and standardize `.env.example` files in both `training-tracker` and `training-tracker-gui`. (Proposed commit: chore(config): Create and standardize .env.example files)
- [x] Task: Refactor Flask `config.py` to use environment variables for CORS origins and ports. (Proposed commit: refactor(backend): Centralize CORS and port configuration in Config)
- [x] Task: Update `docker-compose.yml` to reference environment variables for port mapping. (Proposed commit: chore(docker): Use BACKEND_PORT environment variable in docker-compose.yml)
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Environment Configuration' (Protocol in workflow.md)

## Phase 2: Backend API Expansion (Parity)
Implement the missing endpoints required by the modern UI to display detailed training information.

- [x] Task: Write unit tests for the `/api/trainings/<id>/completions` endpoint. (Proposed commit: test(backend): Add unit tests for training completions API)
- [x] Task: Implement the `get_events_for_training` service method and database query. (Proposed commit: feat(backend): Implement service and DB query for training completions)
- [x] Task: Implement the `/api/trainings/<id>/completions` API route and verify tests pass. (Proposed commit: feat(backend): Add /api/trainings/<id>/completions endpoint)
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Backend API Expansion' (Protocol in workflow.md)

## Phase 3: Frontend Refactoring & Integration
Update the React application to use the centralized configuration and standardized routes.

- [x] Task: Configure Vite to load environment variables (e.g., `VITE_API_BASE_URL`). (Proposed commit: chore(frontend): Use environment variables for API and backend URLs)
- [x] Task: Refactor `src/utilities/api.ts` to use environment variables for the base URL. (Proposed commit: refactor(frontend): Environment-driven API base URL)
- [x] Task: Update all hardcoded port `5001` or `127.0.0.1` references to use the environment-driven config. (Proposed commit: chore(frontend): Remove hardcoded port references)
- [x] Task: Align React routes and navigation links with the standardized backend resource structure. (Proposed commit: feat(frontend): Align routes with backend structure)
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Frontend Refactoring' (Protocol in workflow.md)

## Phase 4: Verification & Documentation
Final end-to-end testing and creation of futureproofing documentation.

- [x] Task: Perform end-to-end verification of the "Record Training" and "Training Detail" flows. (Proposed commit: test(e2e): Verify record and detail flows with port 5001)
- [x] Task: Create `API_MAPPING.md` in the project root to document the relationship between Flask routes and React views. (Proposed commit: docs: Add API_MAPPING.md for futureproofing)
- [x] Task: Conductor - User Manual Verification 'Phase 4: Verification & Documentation' (Protocol in workflow.md) (Proposed commit: chore(conductor): Mark phase 4 complete)
