# Specification: UI Replication & Modernization (UI_Update)

## Overview
Replicate and modernize the core views of the `training-tracker-gui` based on the `UI_Update` branch from the legacy repository. This includes implementing a modern header, a functional navigation menu, a theme toggle (Light/Dark mode), and card-based layouts for the Dashboard, Trainings List, and User Profile pages.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference Repository:** `training-tracker/` (specifically the `UI_Update` branch).

## Functional Requirements
1. **Modern Layout (Hybrid):**
    - **Header (AppBar):** A sticky top header containing the Shyft Solutions logo, user information (email and role), and a functional Theme Toggle.
    - **Navigation Menu (Sidebar):** A collapsible sidebar containing navigation links (Home, Trainings, Supervisor, etc.) with conditional rendering based on roles.
2. **Theme Toggle:**
    - Implement a functional Light/Dark mode toggle using MUI `ThemeProvider` (leveraging stashed implementation).
3. **Card-Based Views:**
    - **Home View:** Feature a "Welcome Card" and a "Training Requirements Card" containing the due trainings table.
    - **Trainings View:** Display the course directory in an elevated MUI Card with a structured Table.
    - **Profile View:** Organize user info, group memberships, and training records into separate, titled MUI Cards.
4. **Mock Data Integration:**
    - Ensure all views are populated with realistic mock data to demonstrate the modernized layout.

## Non-Functional Requirements
- **Visual Fidelity:** Mirror the "UI_Update" aesthetic, including rounded corners, specific brand colors (Blue/Dark), and clean typography.
- **Responsiveness:** The layout must be fully responsive, with the sidebar collapsing into a drawer on mobile.

## Acceptance Criteria
- [ ] Sticky Header displays logo, user info, and working theme toggle.
- [ ] Collapsible Sidebar provides access to all authenticated routes.
- [ ] Home, Trainings, and Profile views use the modernized MUI Card/Table components.
- [ ] Theme switching correctly updates the application's appearance.
