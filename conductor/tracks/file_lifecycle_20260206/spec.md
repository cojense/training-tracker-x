# Specification: File Lifecycle Verification (Upload, Retrieve, Modify)

## Overview
This track focuses on verifying and ensuring functional parity between the React GUI and the Flask API regarding the complete lifecycle of training certificate files. This includes uploading files during event creation, retrieving/viewing them from tables, and modifying them during record updates.

## Functional Requirements
- **Upload Verification:**
    - Ensure `RecordTrainingEventView` correctly packages certificate files as `multipart/form-data`.
    - Verify the Flask API receives and persists these files to the local storage path (`./db/certificates`).
- **Retrieval Verification:**
    - Ensure `TrainingRecordTable` (Profile) and `ApprovalQueueView` provide valid, clickable links to certificates.
    - Verify that clicking a link correctly opens/downloads the file from the backend API.
- **Modification Verification:**
    - Ensure `UpdateTrainingEventView` correctly handles adding or replacing a certificate for an existing record.
    - Verify that "Certificate Unavailable" logic is respected during updates.
- **Backend API Parity:**
    - Verify that the `POST /api/events` and `PUT /api/events/<id>` endpoints handle file data identically to the legacy Flask web routes.

## Future Cloud Readiness (Plan for Hybrid/S3)
- Ensure the `StorageKey` abstraction used in the backend is properly populated by React API calls.
- Once local verification is complete, a follow-up track will be planned to verify logic when `USE_S3_STORAGE=true`.

## Non-Functional Requirements
- **Data Integrity:** Verify that file names and associations are correctly maintained in the `certificates` database table.
- **UX:** Provide clear feedback (notifications) upon successful upload or update.

## Acceptance Criteria
- [ ] A user can create a training record with a PDF/Image certificate, and the file appears in `./db/certificates`.
- [ ] A user can view an uploaded certificate by clicking a link in their training record.
- [ ] A user can replace an existing certificate with a new one, and the change is reflected in the database and storage.
- [ ] Automated tests confirm that the API correctly parses `multipart/form-data` from the frontend.

## Out of Scope
- Implementing cloud-side S3 bucket configuration (covered by existing infra).
- Changing allowed file types (PDF, PNG, JPG).
