# Implementation Plan: Final Functional Parity & Deployment Readiness

This plan covers the final sprint to achieve 100% parity and prepare the application for production deployment.

## Phase 1: Dashboard & Profile Enhancements
Focus on user-facing data presentation and individual record management.

- [ ] Task: Implement color-coded status highlighting in `Home.tsx` (Dashboard).
- [ ] Task: Update "Bill To" column in `Home.tsx` to display joined project names.
- [ ] Task: Update `Profile.tsx` and `UserDetailView.tsx` to show rich certificate status and links.
- [ ] Task: Add "Edit" links for unapproved records in the training record tables.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Dashboard & Profile'

## Phase 2: Reporting & Bulk Actions
Focus on manager-specific utilities and efficiency.

- [ ] Task: Add "Supervisor" column to `ManagerReportView.tsx`.
- [ ] Task: Implement "Export CSV" for Manager and Supervisor reports using a shared utility.
- [ ] Task: Implement Bulk Approval (Check All / Approve Selected) in `ApprovalQueueView.tsx`.
- [ ] Task: Add cert links and edit links to the Approval Queue rows.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Reporting & Bulk Actions'

## Phase 3: Management Lists & Final Polishing
Complete the admin/manager views and ensure production readiness.

- [ ] Task: Implement `GroupDetailView.tsx` and `ProjectDetailView.tsx`.
- [ ] Task: Add sorting and search filtering to `UserListView.tsx`.
- [ ] Task: Perform a final side-by-side audit with the legacy UI to ensure zero gaps.
- [ ] Task: Verify that `docker-compose up` at the root successfully starts the production-ready stack.
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Final Parity'
