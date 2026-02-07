# Implementation Plan: Full API Integration & Secure Authentication

Connect the React frontend to the Flask backend using a secure, server-managed authentication flow and migrate all views to real API data.

## Phase 1: Authentication Infrastructure (Complete)
Set up the redirection logic and the API verification endpoint.

- [x] Task: Create authenticated API utility [2897ab5]
- [x] Task: Implement login redirection logic [c59db53]
- [x] Task: Update AuthProvider for session verification [01587ee]
- [x] Task: Conductor - User Manual Verification 'Phase 1: Authentication Infrastructure' (Protocol in workflow.md)

## Phase 2: Core View Migration [checkpoint: 55b4f45]

Transition the primary user views from mock data to real API calls.



- [x] Task: Migrate Home (Dashboard) View

    - [x] Update `api.ts` with assignment fetching helper.

    - [x] Replace mock data in `Home.tsx` with real API data.

- [x] Task: Migrate Trainings List View

    - [x] Update `api.ts` with training directory helper.

    - [x] Replace mock data in `Trainings.tsx` with real API data.

- [x] Task: Migrate User Profile View

    - [x] Update `api.ts` with profile, groups, and record fetching helpers.

    - [x] Replace mock data in `Profile.tsx` with real API data.

- [x] Task: Conductor - User Manual Verification 'Phase 2: Core View Migration' (Protocol in workflow.md)



## Phase 3: Admin & Management Integration [checkpoint: 55b4f45]

Connect privileged views and management workflows to the API.



- [x] Task: Implement User & Group Management APIs

    - [x] Add helpers for users, groups, and projects to `api.ts`.

    - [x] Connect `UserListView`, `GroupsView`, and `ProjectsView`.

- [x] Task: Implement Approval Workflow

    - [x] Add approval queue and POST approval helpers to `api.ts`.

    - [x] Connect `ApprovalQueueView` to the real API.

- [x] Task: Conductor - User Manual Verification 'Phase 3: Admin & Management Integration' (Protocol in workflow.md)
