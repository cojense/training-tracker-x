# Functional Parity Checklist: Flask UI vs. React GUI

This checklist documents the remaining gaps identified during the side-by-side analysis.

## 1. Core Employee Flow
- [ ] **Home Dashboard:**
    - [ ] Add color-coded row highlighting for overdue (red), almost-due (yellow), and no-nag (gray) trainings.
    - [ ] Update "Bill To" column to join all associated project names (Flask joining logic).
    - [ ] Implement "no_nag" logic to skip reminders for specific assignments.
- [ ] **Profile View:**
    - [ ] Update Training Record table to show detailed certificate status:
        - [ ] "unavailable" (italic) if flag is set.
        - [ ] "missing" (bold) if no cert and flag not set.
        - [ ] Links to actual certificate files if present.
    - [ ] Add "Edit" links for unapproved training events in the record.
- [ ] **Training Details:**
    - [ ] Implement `TrainingDetailView` (Placeholder). Should show description, URL, and list of users who have completed it.

## 2. Manager & Reporting Flow
- [ ] **Approval Queue (`ApprovalQueueView`):**
    - [ ] Implement "Check All" and "Approve Selected" (Bulk Actions).
    - [ ] Add certificate status/links to the queue table.
    - [ ] Add "View/Edit" link for individual events in the queue.
- [ ] **Supervisor View (`SupervisorView`):**
    - [ ] Fully implement the Supervisor Report.
    - [ ] Show training compliance status for team members.
    - [ ] Implement "Export CSV" functionality.
- [ ] **Manager Report (`ManagerReportView`):**
    - [ ] Fully implement the Training Manager Report.
    - [ ] Show global training compliance.
    - [ ] Add "Supervisor" column to the report.
    - [ ] Implement "Export CSV" functionality.
- [ ] **Event Updates:**
    - [ ] Implement `UpdateTrainingEventView` (Placeholder). Allow editing of completion date, comments, and certificate.

## 3. Administrative Flow (Placeholders)
- [ ] **Assignments:**
    - [ ] Implement `AssignTrainingView`. Allow assigning training to Users or Groups.
    - [ ] Implement `EditAssignmentView`. Allow changing project billing or due dates.
- [ ] **Groups:**
    - [ ] Implement `GroupDetailView`. Show members and assigned training.
    - [ ] Implement `GroupCreateView`.
    - [ ] Implement `GroupEditView`.
- [ ] **Projects:**
    - [ ] Implement `ProjectDetailView`. Show associated training and users.
    - [ ] Implement `ProjectCreateView`.
    - [ ] Implement `ProjectEditView`.

## 4. General UX & Polish
- [ ] **Tables:**
    - [ ] Ensure all tables support sorting and filtering.
    - [ ] Implement pagination for large datasets (Users).
- [ ] **Validation:**
    - [ ] Align client-side validation rules with backend WTForms logic.
- [ ] **Navigation:**
    - [ ] Role-based visibility for all sidebar links.
    - [ ] Breadcrumbs or back-button consistency.
- [ ] **Feedback:**
    - [ ] Ensure all mutations show success/error snackbars.
    - [ ] Consistent loading skeletons or spinners.