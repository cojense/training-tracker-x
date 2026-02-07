# Implementation Plan: Functional Parity - Training Management

Implement functional create, edit, and delete capabilities for trainings, mirroring the Flask UI's behavior with modern React patterns.

## Phase 1: Form Infrastructure & API Updates
Establish the tools and API helpers needed for data mutations.

- [x] Task: Install and configure React Hook Form [ebc79ec]
    - [x] Run `bun add react-hook-form`.
- [x] Task: Update API utility for mutations [ebc79ec]
    - [x] Add `createTraining`, `updateTraining`, and `deleteTraining` helpers to `api.ts`.
- [x] Task: Implement Snackbar Feedback system [ebc79ec]
    - [x] Create a simple `NotificationProvider` or view-level snackbar logic.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Form Infrastructure & API Updates' (Protocol in workflow.md)

## Phase 2: Training View Implementation
Build the interactive views for managing trainings.

- [x] Task: Implement TrainingCreateView [ebc79ec]
    - [x] Create the form with fields: Date, Title, Description, and URL.
    - [x] Connect the form to `api.createTraining`.
    - [x] Show success snackbar on creation.
- [x] Task: Implement TrainingEditView [ebc79ec]
    - [x] Fetch existing training data on load.
    - [x] Connect the form to `api.updateTraining`.
    - [x] Add a "Delete" button that triggers `api.deleteTraining`.
    - [x] Show success snackbar on update/delete.
- [x] Task: Final Build & Linting [ebc79ec]
    - [x] Ensure all new components build and lint correctly.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Training View Implementation' (Protocol in workflow.md)
