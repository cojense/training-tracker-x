# Implementation Plan: Functional Parity - Events & User Management

Implement training event recording and administrative user/group management features to match the original Flask UI.

## Phase 1: Event Recording & API Alignment
Focus on the core completion recording workflow, including certificate uploads.

- [x] Task: Update Backend API for Certificate Uploads [33392]
    - [x] Modify `/api/events` in `events.py` to handle `multipart/form-data`.
    - [x] Integrate `certificate_service` into the API response.
- [x] Task: Update GUI API Utility [33392]
    - [x] Add `createEvent` and `updateEvent` helpers to `api.ts` (using `FormData`).
- [x] Task: Implement RecordTrainingEventView [33392]
    - [x] Create the form with: User Select, Training Select, Date, File Upload, Toggle, and Comment.
    - [x] Implement conditional user selection (only for managers).
    - [x] Add success/error snackbars.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Event Recording & API Alignment' (Protocol in workflow.md) [33392]

## Phase 2: User & Group Management
Implement the administrative tools for user profiles and organization structure.

- [x] Task: Implement UserEditView [33392]
    - [x] Create the form for updating personal details and supervisor.
    - [x] Integrate with `api.updateUser`.
- [x] Task: Implement ChangeGroupMembershipView [33392]
    - [x] Create a checklist-style interface for toggling group memberships.
    - [x] Integrate with `api.updateUserGroups`.
- [x] Task: Enhance Admin Lists [33392]
    - [x] Add "Edit" actions to the Users and Groups tables.
- [x] Task: Final Build & Linting [33392]
    - [x] Ensure all new components build and lint correctly.
- [x] Task: Conductor - User Manual Verification 'Phase 2: User & Group Management' (Protocol in workflow.md) [33392]
