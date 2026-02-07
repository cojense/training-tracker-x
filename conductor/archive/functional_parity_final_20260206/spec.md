# Specification: 100% Functional Parity & UI Polish

## Overview
Achieve absolute functional and visual parity between the legacy Flask UI and the React GUI. This track closes all identified gaps, implements missing reporting/bulk actions, and provides a definitive verification checklist for every user flow and API endpoint.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference:** `training-tracker/` (Templates & Endpoints)

## Functional Requirements
1. **Dashboard & List Parity:**
    - Add color-coded row highlighting (Overdue/Almost Due/No-Nag).
    - Concatenate associated project names in the "Bill To" column.
    - Implement list sorting and filtering for all management tables.
2. **Managerial Bulk & Reporting:**
    - Implement "Approve Selected" in the Approval Queue using sequential API calls.
    - Add frontend-driven CSV Export for Supervisor and Manager reports.
    - Add "Supervisor" column to the Manager Report.
3. **Administrative Completion:**
    - Replace placeholders with functional views: `TrainingDetailView`, `UpdateTrainingEventView`, `AssignTrainingView`, `EditAssignmentView`, `GroupDetailView`, `GroupCreateView`, `GroupEditView`, `ProjectDetailView`, `ProjectCreateView`, and `ProjectEditView`.
4. **Data Detail Polish:**
    - Show detailed certificate status (unavailable/missing/link) in the Training Record.
    - Implement "Edit" links for unapproved events in the user's profile record.

## Definitive Verification Protocol
A `parity_verification.md` file will be created to track the following for every view:
- [ ] **Button Parity:** Every button/link in the Flask UI exists in the React UI.
- [ ] **API Reachability:** Every relevant Flask API endpoint is confirmed as callable and utilized.
- [ ] **Mutation Accuracy:** Data changed in React is verified as correct in the Flask UI/DB.
- [ ] **Role Authorization:** Verified correct visibility for Employee, Manager, and Admin.

## Non-Functional Requirements
- **No Backend Changes:** Prioritize frontend logic (e.g., CSV generation, sequential bulk calls) to keep the backend stable.
- **Zero Lint Errors:** Maintain strict adherence to project linting rules.

## Acceptance Criteria
- [ ] 100% of functional flows from Flask UI are operational in React.
- [ ] All verification tasks in `parity_verification.md` are checked and signed off.
- [ ] Application builds and lints with no errors.
