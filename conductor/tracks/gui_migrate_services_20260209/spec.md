# Track Specification: Service Layer Migration & Utility Cleanup

## Overview
Transform the monolithic `api.ts` utility into a structured service layer in `src/services/` and clean up the `src/utilities/` directory by relocating test data and refactoring helper functions.

## Functional Requirements
- **Service Layer Decomposition**:
    - Split `src/utilities/api.ts` into domain-specific service files in `src/services/`:
        - `UserService.ts`
        - `TrainingService.ts`
        - `GroupService.ts`
        - `ProjectService.ts`
        - `ReportService.ts`
    - Implement a shared `BaseApiService.ts` or `apiClient.ts` to handle the core `fetch` logic and headers.
- **Missing Method Implementation**:
    - Identify and implement missing API methods identified in views (e.g., `updateGroup`, `deleteGroup`).
- **Utility Cleanup**:
    - Move `src/utilities/testData.ts` to `tests/mockData.ts`.
    - Evaluate `csvExport.ts` and `statusColors.ts` for potential relocation or refactoring.
- **Import Path Updates**:
    - Update all views to import specific services instead of the monolithic `api` object.

## Non-Functional Requirements
- **Type Safety**: Use strong TypeScript interfaces for all service methods.
- **Maintainability**: Domain-specific services should be focused and encapsulated.

## Acceptance Criteria
- [ ] `src/services/` contains domain-specific service files.
- [ ] Monolithic `api.ts` is removed or significantly reduced.
- [ ] `tests/` directory contains `mockData.ts`.
- [ ] Application builds and starts successfully.
- [ ] No regressions in data fetching or submission.
