# Functional Parity Checklist: Flask UI vs. React GUI

This checklist documents the remaining gaps identified during the side-by-side analysis.

## 1. Employee Flow (Home & Profile)
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
- [ ] **Recording Flow:**
    - [ ] Ensure "Record Training" pre-fills User/Training from query params (Partially implemented, needs full verification).

## 2. Manager & Admin Flow
- [ ] **Reporting:**
    - [ ] Implement "Export CSV" functionality for Supervisor and Manager reports.
    - [ ] Add "Supervisor" column to the Manager Report view.
- [ ] **Approval Queue:**
    - [ ] Implement "Check All" and "Approve Selected" (Bulk Actions).
    - [ ] Add certificate status/links to the queue table.
    - [ ] Add "View/Edit" link for individual events in the queue.
- [ ] **Management Lists (Users, Groups, Projects):**
    - [ ] Ensure all tables support sorting by column.
    - [ ] Add filtering/search capabilities to large lists (Users).
    - [ ] Implement missing "Details" views for individual Groups and Projects.

## 3. General Parity
- [ ] **Navigation:**
    - [ ] Standardize header links and role-based visibility.
- [ ] **Validation:**
    - [ ] Align client-side validation rules with backend WTForms logic.
- [ ] **Form States:**
    - [ ] Ensure consistent "loading" and "saving" indicators across all mutations.
