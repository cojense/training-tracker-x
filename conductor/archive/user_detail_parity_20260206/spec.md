# Specification: Functional Parity - User Detail and Navigation

## Overview
This track aims to achieve 100% functional parity between the legacy Flask UI and the modern React GUI by implementing a generic User Detail view and integrating it into the global navigation flow. This ensures managers can view any employee's training status, just as they can in the legacy system.

## Functional Requirements
- **Generic User Detail View:**
    - Refactor or create a component (e.g., `UserDetailView.tsx`) that displays any user's profile based on a URL parameter (`/users/:id`).
    - Display sections for Personal Details, Current Training Requirements, Training Record, and Group Memberships.
    - Ensure the view correctly loads data for any user ID when accessed by a Manager or Admin.
- **Enhanced Navigation (Parity Links):**
    - **User List:** Add a "View Profile" link/icon to every row in `UserListView`.
    - **Manager/Supervisor Reports:** Make Member names clickable, linking to their generic detail page.
    - **Approval Queue:** Make User names clickable, linking to their generic detail page.
- **Permission Handling:** 
    - Ensure regular employees can only see their own profile.
    - Ensure Managers/Admins can see any user's detail page.

## Non-Functional Requirements
- **Consistency:** Maintain existing React UI enhancements (hamburger menu, dark/light mode, etc.) while introducing the new view.
- **Maintainability:** Share components between the personal "Profile" view and the generic "User Detail" view where possible.

## Acceptance Criteria
- [ ] A Manager can navigate from the User List to view any employee's full training progress.
- [ ] A Supervisor can click a team member's name in their report and see that member's detailed status.
- [ ] An Admin can click a user's name in the Approval Queue to verify their record before approving.
- [ ] Regular employees are restricted from viewing other users' IDs.

## Out of Scope
- Consolidating "Edit User" and "Change Groups" buttons into the detail view (planned for a future track).
- Major restructuring of the view hierarchy.
