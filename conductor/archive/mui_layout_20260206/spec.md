# Specification: Basic Layout & Navigation (MUI)

## Overview
Implement the basic visual structure and navigation for the `training-tracker-gui`, replicating the layout of the original Flask/Bootstrap UI using Material UI (MUI). This establishes the framework for user interactions and conditional access to different application sections.

## Scope
- **Target Repository:** `training-tracker-gui/`
- **Reference Repository:** `training-tracker/trainingbackend/templates/main.html`

## Functional Requirements
1. **Responsive App Bar (Navbar):**
    - Create a top navigation bar using MUI `AppBar` and `Toolbar`.
    - Mirror the navigation links from the Flask UI:
        - **Public:** Home.
        - **Authenticated:** Trainings, Supervisor, Profile, Logout.
        - **Privileged (Manager/Admin):** Manager, Approve, Users, Groups, Projects.
2. **Conditional Rendering:**
    - Navigation links must be rendered conditionally based on the user's authentication state and roles (mocked initially).
3. **Main Content Area:**
    - Establish a centralized container (MUI `Container`) where page-specific content will be rendered.
4. **Basic Routing:**
    - Set up `react-router-dom` to handle navigation between the different sections (placeholder routes for now).

## Non-Functional Requirements
- **Visual Fidelity:** The layout should echo the simple, functional aesthetic of the Bootstrap-based UI while utilizing MUI's modern componentry.
- **Responsiveness:** The navigation bar must collapse into a hamburger menu (Drawer) on mobile devices.

## Acceptance Criteria
- [ ] MUI App Bar is visible and responsive.
- [ ] Navigation links match the original Flask UI structure.
- [ ] Links correctly update the URL using React Router.
- [ ] A placeholder "Home" page is rendered within the main content container.
