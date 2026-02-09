# Implementation Plan: File Lifecycle Verification (Upload, Retrieve, Modify)

This plan outlines the verification and bug-fixing steps required to ensure the React GUI correctly manages training certificates via the Flask API.

## Phase 1: React Frontend Logic & Integration
Prioritize ensuring the frontend correctly handles file selection, state management, and packaging for the API.

- [x] Task: Audit `RecordTrainingEventView.tsx` and `UpdateTrainingEventView.tsx` for proper `FormData` construction and file state management. (Proposed commit: chore(frontend): Audit file upload forms)
- [x] Task: Ensure the `api.ts` utility correctly sets headers (omitting Content-Type) for `multipart/form-data` during event creation and updates. (Ref verified: apiFetch handles FormData correctly)
- [x] Task: Verify file selection validation in React (restricting to PDF, PNG, JPG). (Ref verified: input accept attribute present)
- [x] Task: Ensure "Certificate Unavailable" logic correctly clears file state in the UI. (Proposed commit: feat(frontend): Clear certificate selection when unavailable is checked)
- [x] Task: Conductor - User Manual Verification 'Phase 1: Frontend Logic' (Protocol in workflow.md)

## Phase 2: Backend API Parity & Verification
Ensure the Flask API correctly receives, processes, and persists files from the modern UI.

- [x] Task: Write failing integration tests in Flask for API event creation/update with file attachments. (Proposed commit: test(backend): Add integration tests for API file uploads)
- [x] Task: Verify the `POST /api/events` and `PUT /api/events/<id>` routes in `events.py` correctly handle the `certificate` file field. (Proposed commit: feat(backend): Support multipart/form-data and file uploads in events API)
- [x] Task: Confirm files are successfully saved to `./db/certificates` with the correct associations. (Ref verified: certificate_service integrated into API routes)
- [x] Task: Conductor - User Manual Verification 'Phase 2: API Parity' (Protocol in workflow.md)

## Phase 3: Retrieval & Viewing Verification
Ensure uploaded files can be accessed and displayed in the UI.

- [x] Task: Confirm `CertificateLink` components in the GUI use the standardized port and API path (`/api/certificates/:id`). (Ref verified: components point to port 5001)
- [x] Task: Verify the `GET /api/certificates/<int:certificate_id>` route returns the correct file content-type and binary data. (Proposed commit: test(backend): Add unit tests for certificate retrieval API)
- [x] Task: Test end-to-end viewing of PDF and Image certificates from the User Profile. (Ref verified via integration tests)
- [x] Task: Conductor - User Manual Verification 'Phase 3: File Retrieval' (Protocol in workflow.md)

## Phase 4: S3 Readiness & Cleanup
Ensure the logic is robust enough for future cloud migration.

- [x] Task: Verify that `StorageKey` objects are correctly generated for both local and S3 storage paths during API uploads. (Ref verified: create_certificate handles both types)
- [x] Task: Document any specific environment variables required for S3 testing in `API_MAPPING.md`. (Proposed commit: docs: Add S3 environment variables to API_MAPPING.md)
- [x] Task: Conductor - User Manual Verification 'Phase 4: Final Verification' (Protocol in workflow.md)
