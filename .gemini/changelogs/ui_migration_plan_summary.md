# UI Migration Plan Summary: Jinja2 to React

This document summarizes the necessary UI components and views to be developed in the `training-tracker-gui` React application to achieve full feature parity with the existing `training-tracker` Flask application's Jinja2 template frontend.

## Existing Views Mapping:
- **Home/Dashboard:** `logged_in_index.html` and `training_due.html` correspond to `HomeView.tsx` and `components/TrainingDueTable.tsx`. The React component is missing conditional styling for due/overdue items and role-based actions.
- **Login:** `logged_out_index.html` corresponds to `LoginView.tsx`.
- **Training List:** `trainings.html` corresponds to `TrainingView.tsx`. The React view is missing the ability for managers to create new trainings.
- **Profile:** `user_detail.html` corresponds to `ProfileView.tsx`.
- **Supervisor Report:** `supervisor_report.html` corresponds to `SupervisorView.tsx`.

## Missing Views and Functionality in React App:

The following major features and corresponding UI components are missing from the React application and need to be implemented:

### 1. Project Management
-   **`ProjectsView`**: List all projects. (Corresponds to `projects.html`)
-   **`ProjectDetailView`**: Display details of a single project. (Corresponds to `project_detail.html`)
-   **`ProjectCreateView`**: Form for creating a new project. (Corresponds to `create_project.html` and `project_form.html`)
-   **`ProjectEditView`**: Form for editing an existing project. (Corresponds to `edit_project.html` and `project_form.html`)

### 2. Group Management
-   **`GroupsView`**: List all user groups. (Corresponds to `groups.html`)
-   **`GroupDetailView`**: Display group details, members, and assigned training. (Corresponds to `group_detail.html`)
-   **`GroupCreateView`**: Form for creating a new group. (Corresponds to `create_group.html` and `group_form.html`)
-   **`GroupEditView`**: Form for editing an existing group. (Corresponds to `edit_group.html` and `group_form.html`)
-   **`ChangeGroupMembershipView`**: Manage group membership for a user. (Corresponds to `change_groups.html`)

### 3. User Management (Admin Functionality)
-   **`UserListView`**: List all users in the system. (Corresponds to `users.html`)
-   **`UserEditView`**: Form for administrators to edit user details. (Corresponds to `edit_user.html`)

### 4. Advanced Training Management
-   **`TrainingDetailView`**: Display full details of a training course. (Corresponds to `training_detail.html`)
-   **`TrainingCreateView`**: Form for creating a new training course. (Corresponds to `create_training.html` and `training_form.html`)
-   **`TrainingEditView`**: Form for editing an existing training course. (Corresponds to `edit_training.html` and `training_form.html`)

### 5. Training Assignment & Event Management
-   **`AssignTrainingView`**: Form to assign a training to a group or user. (Corresponds to `assign_training.html` and `assignment_form.html`)
-   **`EditAssignmentView`**: Form to edit an existing training assignment. (Corresponds to `edit_assignment.html` and `assignment_form.html`)
-   **`RecordTrainingEventView`**: Form to record a training event completion. (Corresponds to `record_training.html` and `event_form.html`)
-   **`UpdateTrainingEventView`**: Form to update an existing training event. (Corresponds to `update_training.html` and `event_form.html`)

### 6. Workflow & Reports
-   **`ApprovalQueueView`**: Page for managers to review and approve submitted training events. (Corresponds to `unapproved_training.html`)
-   **`ManagerReportView`**: Manager-specific training report. (Corresponds to `training_manager_report.html`)

### General UI Elements to Re-implement:
-   **Navigation Bar**: Recreate the full navigation bar logic from `main.html` with role-based visibility.
-   **Form Error Display**: Replicate the functionality of `form_errors.html`.
-   **Authentication Flow**: The basic login is present, but handling of authenticated state and user roles will need to be fully integrated across all new views.
-   **Conditional Styling**: Implement styling for "over-due", "almost-due", and "no-nag" assignments, as seen in `training_due.html`, `supervisor_report.html`, and `training_manager_report.html`.

This comprehensive list will guide the development of the React frontend to ensure all existing functionalities are preserved and enhanced.
