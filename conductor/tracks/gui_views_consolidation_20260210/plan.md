# Implementation Plan: Refactor: Consolidate `training-tracker-gui/src/views/` Directory

## Phase 1: Initial Assessment and Identification

- [x] Task: Conduct initial assessment of `training-tracker-gui/src/views/`
    - [ ] Sub-task: Identify all files currently within `src/views/`.
    - [ ] Sub-task: Analyze `src/App.tsx` to understand current routing and identify all directly routed components.
    - [ ] Sub-task: For each file in `src/views/`, determine if it is a "main view" (directly routed) or a "component of a view" (sub-component).
    - [ ] Sub-task: Document the current state of `src/views/`, categorizing each file.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Initial Assessment and Identification' (Protocol in workflow.md)

## Phase 2: Relocation of Components of Views

- [x] Task: Create new directories for "components of views"
    - [ ] Sub-task: For each identified "component of a view", create a new logical directory (e.g., `src/{origin_view}/{component_name}`).
- [x] Task: Move "components of views" to their new locations
    - [ ] Sub-task: Relocate each "component of a view" file to its corresponding new directory.
    - [ ] Sub-task: Update all import paths in files that reference the moved components.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Relocation of Components of Views' (Protocol in workflow.md)

## Phase 3: Consolidate Main Views and Update Routing

- [x] Task: Consolidate main views in `src/views/` to meet the 8-10 file target
    - [ ] Sub-task: Rename `Home.tsx` to `HomeView.tsx` and extract reusable `TrainingRequirementsCard` component.
    - [ ] Sub-task: Rename `Profile.tsx` to `ProfileView.tsx` and integrate `TrainingRequirementsCard` component.
    - [ ] Sub-task: Rename `UserListView.tsx` to `UsersView.tsx`.
    - [ ] Sub-task: Move `UserEditView.tsx` to `src/components/users/UserEditDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `UserDetailView.tsx` to `src/components/users/UserDetailDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `ChangeGroupMembershipView.tsx` to `src/components/users/UserGroupsDialog.tsx` (or Modal).
    - [ ] Sub-task: Create new component `src/components/users/UserCreateDialog.tsx` (or Modal).
    - [ ] Sub-task: Rename `Trainings.tsx` to `TrainingsView.tsx`.
    - [ ] Sub-task: Move `TrainingCreateView.tsx` to `src/components/trainings/TrainingCreateDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `TrainingDetailView.tsx` to `src/components/trainings/TrainingDetailDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `TrainingEditView.tsx` to `src/components/trainings/TrainingEditDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `AssignTrainingView.tsx` to `src/components/trainings/TrainingAssignDialog.tsx` (or Modal).
    - [ ] Sub-task: Consolidate `RecordTrainingEventView.tsx` and `UpdateTrainingEventView.tsx` into `src/components/TrainingEventDialog.tsx` (or Modal).
    - [ ] Sub-task: Rename `GroupsView.tsx` (already exists, no change needed).
    - [ ] Sub-task: Move `GroupCreateView.tsx` to `src/components/groups/GroupCreateDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `GroupDetailView.tsx` to `src/components/groups/GroupDetailDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `GroupEditView.tsx` to `src/components/groups/GroupEditDialog.tsx` (or Modal).
    - [ ] Sub-task: Rename `ProjectsView.tsx` (already exists, no change needed).
    - [ ] Sub-task: Move `ProjectCreateView.tsx` to `src/components/projects/ProjectCreateDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `ProjectDetailView.tsx` to `src/components/projects/ProjectDetailDialog.tsx` (or Modal).
    - [ ] Sub-task: Move `ProjectEditView.tsx` to `src/components/projects/ProjectEditDialog.tsx` (or Modal).
    - [ ] Sub-task: Consolidate `ApprovalQueueView.tsx`, `ManagerReportView.tsx`, `SupervisorView.tsx` into a new `SupervisorReportsView.tsx` (or similar name for the main view) that acts as a shell.
    - [ ] Sub-task: Move original `ApprovalQueueView.tsx` content to `src/components/supervisor/SupervisorApprovalQueueTable.tsx` (or Card).
    - [ ] Sub-task: Move original `ManagerReportView.tsx` content to `src/components/supervisor/SupervisorManagerReportTable.tsx` (or Card).
    - [ ] Sub-task: Move original `SupervisorView.tsx` content to `src/components/supervisor/SupervisorTeamReportTable.tsx` (or Card).
    - [ ] Sub-task: Delete original individual view files that have been moved or consolidated.
- [x] Task: Update `src/App.tsx` routing
    - [ ] Sub-task: Modify `src/App.tsx` to reflect new main view names and removed routes.
    - [ ] Sub-task: Ensure all existing application routes function correctly with the updated view structure.
- [~] Task: Conductor - User Manual Verification 'Phase 3: Consolidate Main Views and Update Routing' (Protocol in workflow.md)

## Phase 4: Testing and Verification

- [ ] Task: Write or update unit and integration tests
    - [ ] Sub-task: Create new tests for any newly organized or modified components.
    - [ ] Sub-task: Update existing tests to reflect changes in file paths or component structure.
- [ ] Task: Run all automated tests
    - [ ] Sub-task: Ensure all unit, integration, and other automated tests pass successfully.
- [ ] Task: Manual verification of application functionality
    - [ ] Sub-task: Perform a comprehensive manual verification of the application to ensure all functional requirements are met and no regressions are introduced.
- [ ] Task: Conductor - User Manual Verification 'Phase 4: Testing and Verification' (Protocol in workflow.md)
