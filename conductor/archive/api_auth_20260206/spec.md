# Specification: Full API Integration & Secure Authentication

## Overview
Implement complete API integration between the React frontend and the Flask backend. This includes a secure server-managed authentication flow and the migration of all core views (Dashboard, Trainings, Profile, and Admin tools) from mock data to real backend API endpoints.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference Repository:** `training-tracker/` (specifically the `hybrid-api-bridge` branch).

## Functional Requirements
1. **Secure Authentication Flow (Complete):**
    - Multi-method login (Google OAuth & Dev Bypass) with secure HttpOnly session cookies.
    - Automated session verification and protected routing.
2. **Authenticated API Client:**
    - Centralized `src/utilities/api.ts` with type-safe methods for all backend endpoints.
3. **Core View Migration:**
    - **Home View:** Fetch and display real user assignments and due trainings.
    - **Trainings View:** Fetch and display the full directory of system courses.
    - **Profile View:** Display real user details, group memberships, and training records.
4. **Admin & Manager Tools:**
    - **Users List:** Fetch all system users (privileged access).
    - **Groups/Projects:** Fetch and manage organization structures.
    - **Approval Queue:** Implement the training approval workflow for managers.

## Non-Functional Requirements
- **Type Safety:** Ensure all API responses are properly typed using shared interfaces.
- **Loading & Error States:** Implement robust handling for data fetching states across all views.
- **Security:** Maintain strict adherence to principle of least privilege via role-based access control (enforced by the backend).

## Acceptance Criteria
- [x] User can log in via Google OAuth or the Dev Login bypass.
- [x] React app successfully fetches the authenticated user's details.
- [ ] Home Dashboard displays real due trainings from the database.
- [ ] Trainings directory lists all courses from the database.
- [ ] User Profile displays accurate history and memberships.
- [ ] All remaining placeholder views are connected to their respective API endpoints.