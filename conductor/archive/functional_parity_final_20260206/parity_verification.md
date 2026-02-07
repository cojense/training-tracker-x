# Parity Verification Checklist

This is the definitive verification checklist for achieving 100% functional parity between the legacy Flask UI and the React GUI.

## 1. Authentication & Global Navigation
- [ ] **Login/Logout Flow:** Verified `next` parameter support and session persistence.
- [ ] **Header Links:** Role-based visibility for "Users", "Groups", "Projects", "Approval Queue".
- [ ] **Flask UI Toggle:** Link correctly takes user to `http://localhost:5001/`.

## 2. Employee Flows
### Home Dashboard
- [ ] **Button Parity:** "Record" button present for every due training.
- [ ] **API Reachability:** Consumes `/api/users/me/assignments`.
- [ ] **UI Polish:** Overdue (Red) / Almost Due (Yellow) highlighting.
- [ ] **Data Accuracy:** "Bill To" matches Flask (joined project names).

### Profile / Training Record
- [ ] **Button Parity:** "Edit User" (Admin), "Change Groups" (Manager), "Record Training" buttons present.
- [ ] **API Reachability:** Consumes `/api/users/me/record`, `/api/users/me/groups`.
- [ ] **Mutation Accuracy:** Recording a training in React updates the table immediately.
- [ ] **Cert Status:** Detailed status (unavailable/missing/link) matches Flask logic.
- [ ] **Edit Event:** Can edit unapproved events from the record table.

## 3. Manager Flows
### Approval Queue
- [ ] **Button Parity:** "Approve Selected" (Bulk) and individual "Edit" links.
- [ ] **API Reachability:** Consumes `/api/approvals`, utilizes sequential `PUT /api/events/{id}`.
- [ ] **Mutation Accuracy:** Approving in React clears the item from Flask's queue.

### Supervisor View
- [ ] **Button Parity:** "Export CSV" button present.
- [ ] **API Reachability:** Fetches full team data correctly.
- [ ] **Export:** CSV content matches Flask report columns.

## 4. Admin Flows
### User Management
- [ ] **Button Parity:** "Edit Profile", "Change Groups" icons in list.
- [ ] **API Reachability:** `/api/users` (GET/PUT), `/api/users/{id}/groups` (POST).
- [ ] **Mutation Accuracy:** Updating a name or status in React is reflected in Flask.

### Training/Group/Project Management
- [ ] **View Parity:** All placeholder views (Detail/Create/Edit) replaced with functional forms.
- [ ] **API Reachability:** Full CRUD endpoints for Trainings, Groups, and Projects verified.

## 5. System-Wide Quality
- [ ] **Zero Lint Errors:** `bun run lint` passes.
- [ ] **Zero Build Errors:** `bun run build` passes.
- [ ] **Validation Parity:** All required fields and formats match WTForms definitions.
