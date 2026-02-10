# Implementation Plan: Test Suite Relocation

Migrate and verify the project's test suite.

## Phase 1: Test Migration
- [x] Task: List and map all test files in `src/`.
- [x] Task: Execute migration to `tests/` mirroring the `src/` structure.
- [x] Task: Update relative imports in all migrated test files.
- [x] Task: Remove legacy `__tests__` directories from `src/`.
- [x] Task: Verify with `bun run test`.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Test Migration' (Protocol in workflow.md) [checkpoint: 163dd09]
