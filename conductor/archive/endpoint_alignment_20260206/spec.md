# Specification: Endpoint Alignment and Configuration Centralization

## Overview
The goal of this track is to resolve the mismatch between the Flask backend and React frontend endpoints, specifically focusing on the `training/{id}` view. This involves standardizing ports and domains, centralizing environment configuration to eliminate hardcoding, and ensuring the backend provides the data needed by the modern UI.

## Functional Requirements
- **Standardize Backend Port:** Ensure the Flask API consistently uses port `5000` (mapped from Docker).
- **Domain Normalization:** Standardize on `localhost` (rather than `127.0.0.1`) for local development to ensure consistent Origin headers and session/cookie handling.
- **Centralized Configuration:**
    - Create/Update `.env.example` files for both `training-tracker` and `training-tracker-gui`.
    - Move API base URLs and CORS origins to environment variables in the React frontend and Flask backend.
- **Endpoint Parity:** 
    - Implement the missing `/api/trainings/<id>/completions` endpoint in the Flask backend.
    - Ensure React navigation for Training Details mirrors the backend's resource structure.
- **Cloud Readiness:** Ensure configuration variables can be easily adapted for production (e.g., `https://training.shyftsolutions.io/`).

## Non-Functional Requirements
- **Security:** Ensure CORS settings are restrictive but functional across different environments.
- **Maintainability:** Eliminate hardcoded port and domain values in source code.

## Acceptance Criteria
- [ ] React UI can successfully fetch training details and completion history from port `5000`.
- [ ] No hardcoded `localhost:5001` or `127.0.0.1` strings remain in the GUI source code.
- [ ] `.env.example` files exist in both project subdirectories with clear instructions.
- [ ] The "Record Training" button and "Training Name" links in the Manager Report correctly navigate and load data.

## Out of Scope
- Migrating authentication logic away from Google OAuth.
- Redesigning the database schema (beyond adding necessary query methods).
