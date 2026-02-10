# Implementation Plan: Service Layer Migration & Utility Cleanup

Decompose the monolithic API and organize project utilities.

## Phase 1: API Decomposition
- [x] Task: Create `src/services/apiClient.ts` for base fetch logic.
- [x] Task: Create domain-specific services (`UserService`, `TrainingService`, etc.) and migrate methods from `api.ts`.
- [x] Task: Update all view imports to use the new service layer.
- [x] Task: Verify with `bun run build`.
- [x] Task: Conductor - User Manual Verification 'Phase 1: API Services' (Protocol in workflow.md)

## Phase 2: Utility Cleanup
- [x] Task: Move `testData.ts` to `tests/mockData.ts`.
- [x] Task: Update imports for `csvExport.ts` and `statusColors.ts` to new structure.
- [x] Task: Final project-wide lint and build check.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Utility Cleanup' (Protocol in workflow.md)
