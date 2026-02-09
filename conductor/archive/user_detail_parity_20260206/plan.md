# Implementation Plan: Functional Parity - User Detail and Navigation

This plan outlines the steps to implement the generic User Detail view and integrate it into the application's navigation flow, ensuring parity with the Flask UI.

## Phase 1: User Detail View Implementation
Build the generic view that can display data for any user ID.

- [x] Task: Audit `src/views/Profile.tsx` to identify reusable logic and components.
- [x] Task: Create `src/views/UserDetailView.tsx` to fetch and display data based on the `:id` URL parameter.
- [x] Task: Update `src/utilities/api.ts` to include methods for fetching another user's assignments and record (`/users/:id/assignments`, `/users/:id/record`).
- [x] Task: Register the new route `/users/:id` in `App.tsx` with appropriate role-based protection.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: User Detail View' (Protocol in workflow.md)

## Phase 2: Navigation Integration
Update existing views to link to the new User Detail page.

- [x] Task: Update `UserListView.tsx` to add a "View" action button linking to `/users/:id`.
- [x] Task: Update `ManagerReportView.tsx` to make the "Member" column a link to `/users/:member_id`.
- [x] Task: Update `SupervisorView.tsx` to make the "Member" column a link to `/users/:member_id`.
- [x] Task: Update `ApprovalQueueView.tsx` to make the "User" column a link to `/users/:user_id`.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Navigation Integration' (Protocol in workflow.md)

## Phase 3: Verification & Cleanup
Ensure permissions and data loading work correctly across all roles.

- [x] Task: Verify that a regular employee receives a 403 or redirect when attempting to access another user's page.
- [x] Task: Verify that Managers can successfully view details for users in their reports.
- [x] Task: Ensure no regressions in the "Personal Profile" view.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Final Verification' (Protocol in workflow.md)
