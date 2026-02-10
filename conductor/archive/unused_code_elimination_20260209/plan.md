## Phase 1: Analysis & Planning
- [x] Task: Research and identify appropriate ESLint rules and plugins for comprehensive unused code detection (imports, variables, functions, classes, files).
- [x] Task: Analyze current `training-tracker-gui/eslint.config.js` to determine best integration points for new rules.
- [x] Task: Outline strategy for automated unused import removal.
- [x] Task: Define methodology for detecting and reporting unused files.
- [x] Task: Plan for code removal notification process.
- [x] Task: Conductor - User Manual Verification 'Phase 1: Analysis & Planning' (Protocol in workflow.md)

## Phase 2: Implementation
- [x] Task: Update `training-tracker-gui/eslint.config.js` with rules for automated unused import removal.
- [x] Task: Configure `training-tracker-gui/eslint.config.js` with rules for detecting unused local variables, functions, and classes.
- [x] Task: Implement or integrate a mechanism for detecting and reporting unreferenced files (components, services, utilities) using `depcheck`.
- [x] Task: Install `depcheck` and add a script to `package.json` to run it.
- [x] Task: Run ESLint autofix to remove unused imports and run `depcheck` to identify unused files.
- [x] Task: Manually review `depcheck` output and remove identified unused files; also review ESLint output for unused functions and variables, ensuring notification of removals.
- [x] Task: Run `bun run test` to ensure no regressions were introduced.
- [x] Task: Conductor - User Manual Verification 'Phase 2: Implementation' (Protocol in workflow.md)

## Phase 3: Verification & Review
- [x] Task: Verify that ESLint autofix removes unused imports.
- [x] Task: Verify ESLint reports zero unused warnings/errors after fixes.
- [x] Task: Verify `depcheck` reports no unreferenced files in `src/`.
- [x] Task: Verify `eslint.config.js` is correctly updated.
- [x] Task: Verify all automated tests (`bun run test`) pass.
- [x] Task: Manual code review for unintended removals and adherence to requirements.
- [x] Task: Conductor - User Manual Verification 'Phase 3: Verification & Review' (Protocol in workflow.md)