# Track Specification: Hook & Context Migration

## Overview
Relocate React Contexts and Custom Hooks to the dedicated `src/hooks/` directory to improve project organization and separate UI logic from general utilities.

## Functional Requirements
- **File Relocation**:
    - Move `src/utilities/NotificationContext.tsx` to `src/hooks/`.
    - Move `src/utilities/useAuth.tsx` to `src/hooks/`.
- **Import Path Updates**:
    - Update all files in `src/` that import `NotificationContext`, `useNotification`, `useAuth`, or `AuthProvider` to use the new `../hooks/` or `~/hooks/` paths.
- **Verification**:
    - Ensure the application still builds and functions correctly (authentication and notifications).

## Non-Functional Requirements
- **Consistency**: All custom hooks and providers should now reside in `src/hooks/`.
- **ESLint Compliance**: Ensure no import-related lint errors are introduced.

## Acceptance Criteria
- [ ] `src/hooks/NotificationContext.tsx` and `src/hooks/useAuth.tsx` exist.
- [ ] No imports reference the old paths in `src/utilities/`.
- [ ] `bun run build` completes successfully.
