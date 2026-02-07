# Implementation Plan: File Lifecycle Verification (Upload, Retrieve, Modify)

This plan outlines the verification and bug-fixing steps required to ensure the React GUI correctly manages training certificates via the Flask API.

## Phase 1: React Frontend Logic & Integration
Prioritize ensuring the frontend correctly handles file selection, state management, and packaging for the API.

- [x] Task: Audit `RecordTrainingEventView.tsx` and `UpdateTrainingEventView.tsx` for proper `FormData` construction and file state management. (Proposed commit: chore(frontend): Audit file upload forms)
- [x] Task: Ensure the `api.ts` utility correctly sets headers (omitting Content-Type) for `multipart/form-data` during event creation and updates. (Ref verified: apiFetch handles FormData correctly)
- [x] Task: Verify file selection validation in React (restricting to PDF, PNG, JPG). (Ref verified: input accept attribute present)
- [x] Task: Ensure "Certificate Unavailable" logic correctly clears file state in the UI. (Proposed commit: feat(frontend): Clear certificate selection when unavailable is checked)
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Frontend Logic' (Protocol in workflow.md)

## Phase 2: Backend API Parity & Verification
Ensure the Flask API correctly receives, processes, and persists files from the modern UI.

- [ ] Task: Write failing integration tests in Flask for API event creation/update with file attachments.
- [ ] Task: Verify the `POST /api/events` and `PUT /api/events/<id>` routes in `events.py` correctly handle the `certificate` file field.
- [ ] Task: Confirm files are successfully saved to `./db/certificates` with the correct associations.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: API Parity' (Protocol in workflow.md)

## Phase 3: Retrieval & Viewing Verification
Ensure uploaded files can be accessed and displayed in the UI.

- [ ] Task: Confirm `CertificateLink` components in the GUI use the standardized port and API path (`/api/certificates/:id`).
- [ ] Task: Verify the `GET /api/certificates/<int:certificate_id>` route returns the correct file content-type and binary data.
- [ ] Task: Test end-to-end viewing of PDF and Image certificates from the User Profile.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: File Retrieval' (Protocol in workflow.md)

## Phase 4: S3 Readiness & Cleanup
Ensure the logic is robust enough for future cloud migration.

- [ ] Task: Verify that `StorageKey` objects are correctly generated for both local and S3 storage paths during API uploads.
- [ ] Task: Document any specific environment variables required for S3 testing in `API_MAPPING.md`.
- [ ] Task: Conductor - User Manual Verification 'Phase 4: Final Verification' (Protocol in workflow.md)
