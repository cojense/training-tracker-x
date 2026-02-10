# Track Specification: Test Suite Relocation

## Overview
Relocate all test files from within the `src/` directory to a dedicated root-level `tests/` directory. This improves separation of concerns and aligns the project structure with modern testing practices.

## Functional Requirements
- **Test Relocation**:
    - Identify all files matching `**/*.test.tsx` or `**/*.test.ts` within `src/`.
    - Move these files to the root-level `tests/` directory, mirroring the directory structure of `src/`.
    - Example: `src/views/__tests__/UserListView.test.tsx` -> `tests/views/UserListView.test.tsx`.
- **Import Resolution**:
    - Update all relative imports within test files to point to the correct locations in `src/`.
    - Ensure all tests still pass using `bun run test`.
- **Config Verification**:
    - Ensure `vitest.config.ts` and `tsconfig.app.json` correctly identify the new test location.

## Non-Functional Requirements
- **Cleanliness**: Remove all empty `__tests__` directories from `src/`.
- **Consistency**: All tests must reside in the root `tests/` directory.

## Acceptance Criteria
- [ ] No test files remain in `src/`.
- [ ] `tests/` directory contains all migrated tests in a mirrored hierarchy.
- [ ] `bun run test` executes all tests and they pass.
