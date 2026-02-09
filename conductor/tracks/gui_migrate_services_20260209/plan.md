# Implementation Plan: Service Layer Migration & Utility Cleanup

Decompose the monolithic API and organize project utilities.

## Phase 1: API Decomposition
- [ ] Task: Create `src/services/apiClient.ts` for base fetch logic.
- [ ] Task: Create domain-specific services (`UserService`, `TrainingService`, etc.) and migrate methods from `api.ts`.
- [ ] Task: Update all view imports to use the new service layer.
- [ ] Task: Verify with `bun run build`.
- [ ] Task: Conductor - User Manual Verification 'Phase 1: API Services' (Protocol in workflow.md)

## Phase 2: Utility Cleanup
- [ ] Task: Move `testData.ts` to `tests/mockData.ts`.
- [ ] Task: Update imports for `csvExport.ts` and `statusColors.ts` to new structure.
- [ ] Task: Final project-wide lint and build check.
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Utility Cleanup' (Protocol in workflow.md)
