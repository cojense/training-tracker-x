# Refactor: Consolidate `training-tracker-gui/src/views/` Directory

## Overview
This track aims to refactor and consolidate the `training-tracker-gui/src/views/` directory to improve codebase simplicity, readability, and maintainability. The current state of the directory, containing 33 files, deviates from the desired target of approximately 8-9 main view files, with sub-components organized logically.

## Functional Requirements
- The application's existing functionalities and user experience must remain unchanged after the refactoring. All routes and associated views should function as before.

## Non-Functional Requirements
- **Maintainability:** The refactored `src/views/` directory should be easier to navigate and understand, with a clear separation between main views and their sub-components.
- **Readability:** Code within the `src/views/` directory and its newly organized subdirectories should adhere to existing project code style guidelines.
- **Performance:** The refactoring should not introduce any performance regressions in the React application.

## Acceptance Criteria
- The `training-tracker-gui/src/views/` directory will contain a maximum of 8-10 files, representing the primary routed views of the application.
- All files currently in `src/views/` that are identified as "components of a view" (sub-components not directly routed) will be relocated to a new, logical directory structure, likely `src/{origin_view}/{view/component name}`.
- Main views are defined as directly routed components in `src/App.tsx`.
- The existing routing in `src/App.tsx` must be updated to reflect the new file locations and consolidated view structure, maintaining all current application routes.

## Out of Scope
- Detailed refactoring or re-implementation of the internal logic within individual view components.
- Optimization of existing component logic beyond what is necessary for file relocation and structural organization.
- Creation of new features or modification of existing application functionality.
