# Implementation Plan: Hook & Context Migration

Relocate core UI logic providers and hooks.

## Phase 1: Migration & Import Updates
- [x] Task: Move `NotificationContext.tsx` and `useAuth.tsx` to `src/hooks/`.
- [x] Task: Update all import references in `src/views/`, `src/components/`, `App.tsx`, and `index.tsx`.
- [x] Task: Verify with `bun lint` and `bun run build`.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Hooks Migration' (Protocol in workflow.md)
