# Specification: Functional Parity - Events & User Management

## Overview
Achieve full functional parity between the React GUI and the original Flask UI by implementing training event recording (including certificate uploads) and user/group management features.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference Repository:** `training-tracker/` (specifically `events.py` and `users.py`).

## Functional Requirements
1. **Interactive Event Recording:**
    - Implement `RecordTrainingEventView` and `UpdateTrainingEventView` using `React Hook Form`.
    - **Form Fields:**
        - **User Selection:** Dropdown for managers to select team members (pre-filled for self-service).
        - **Training Selection:** Dropdown to select the course being recorded.
        - **Completion Date:** Date picker (defaulting to today).
        - **Certificate Upload:** File input for PDF/Images.
        - **Certificate Unavailable:** Toggle to record without a certificate.
        - **Comments:** Multi-line text field for notes.
2. **User & Group Management:**
    - Implement `UserEditView` to allow admins to update user details (Name, Email, Supervisor, Status).
    - Implement `ChangeGroupMembershipView` to allow managers to toggle user group memberships.
3. **API Enhancements:**
    - Update `src/utilities/api.ts` with helpers for creating/updating events and managing users/groups.
    - **Note:** The backend `/api/events` endpoint will be updated to support `multipart/form-data` for certificate uploads.
4. **Enhanced Data Tables:**
    - Add "Edit" and "Details" actions to the Users, Groups, and Projects lists.

## Non-Functional Requirements
- **Consistency:** Use Material Design patterns for forms, including validation feedback and progress indicators.
- **Security:** Maintain strict role-based access control for management actions.

## Acceptance Criteria
- [ ] Users can record training completions with optional certificate uploads.
- [ ] Managers can record completions for other team members.
- [ ] Admins can edit user profiles.
- [ ] Managers can update user group memberships.
- [ ] All views correctly display success/error notifications via snackbars.
