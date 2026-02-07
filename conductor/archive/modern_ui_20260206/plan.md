# Implementation Plan: UI Replication & Modernization (UI_Update)

Modernize the GUI layout and implement core views based on the `UI_Update` branch from the backend repository.

## Phase 1: Layout & Theme Infrastructure [checkpoint: c59db53]
Establish the modernized shell and theme switching capabilities.

- [x] Task: Implement ThemeProvider and Toggle [2897ab5]
    - [ ] Set up a global theme state and `ThemeProvider` in `App.tsx` (using stashed logic as reference).
    - [ ] Create a functional `ThemeToggle` component for the header.
- [x] Task: Create the Modern Header (AppBar) [c59db53]
    - [ ] Implement a sticky `Header` component with the Shyft logo and user info section.
    - [ ] Integrate the `ThemeToggle` into the header.
- [x] Task: Create the Collapsible Sidebar [c59db53]
    - [ ] Implement a `Sidebar` component (MUI `Drawer`) for navigation links.
    - [ ] Update `App.tsx` to handle the responsive layout (Header + Sidebar + Content).
- [x] Task: Conductor - User Manual Verification 'Phase 1: Layout & Theme Infrastructure' (Protocol in workflow.md) [c59db53]

## Phase 2: Modernized View Implementation [checkpoint: 55b4f45]
Replicate the core views using the new card-based design.

- [x] Task: Implement Modernized Home View [55b4f45]
    - [x] Create "Welcome" and "Requirements" MUI `Card` components.
    - [x] Populate the requirements table with mock data.
- [x] Task: Implement Modernized Trainings View [55b4f45]
    - [x] Wrap the Trainings table in an elevated MUI `Card`.
    - [x] Add the "Create Training" link for appropriate roles.
- [x] Task: Implement Modernized Profile View [55b4f45]
    - [x] Organize user details, groups, and history into separate MUI `Card` sections.
- [x] Task: Verify Responsiveness & Final Build [55b4f45]
    - [x] Ensure the entire layout works correctly on mobile viewports.
    - [x] Run a final build and lint check.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Modernized View Implementation' (Protocol in workflow.md) [55b4f45]
