# Specification: Final Functional Parity & Deployment Readiness

## Overview
This final parity track addresses all remaining gaps between the legacy Flask UI and the modern React GUI. It focuses on detailed data presentation (color coding, complex joins), bulk management actions, and advanced reporting features to ensure the GUI is 100% ready to replace the legacy system in production.

## Functional Requirements
- **Enhanced Dashboard (Home):**
    - Implement row highlighting based on status (Red: Overdue, Yellow: Almost Due, Gray: No Nag).
    - Implement "Bill To" column logic to join associated project names.
    - Ensure "no_nag" assignments are correctly excluded from alerts.
- **Advanced Profile Details:**
    - Display detailed certificate status (italic 'unavailable', bold 'missing', or active download links).
    - Add "Edit" capability for unapproved records directly from the profile.
- **Reporting Enhancements:**
    - Add "Supervisor" column to the Manager Report.
    - Implement robust CSV export for both Supervisor and Manager reports.
- **Approval Queue Improvements:**
    - Implement "Select All" and "Approve Selected" bulk actions.
    - Add certificate download links and individual record "View/Edit" links to the queue.
- **Management UX:**
    - Implement "Details" views for Groups and Projects.
    - Add table sorting and basic search/filtering for the User Directory.

## Non-Functional Requirements
- **Performance:** Optimized data fetching for large reports.
- **Consistency:** All new views must match the existing MUI layout and theme.

## Acceptance Criteria
- [ ] Dashboard rows are visually distinguishable by compliance status.
- [ ] Managers can export compliance reports to CSV for external audits.
- [ ] Admins can process multiple training approvals simultaneously.
- [ ] Users can view the specific membership and assignment details of any Group or Project.
- [ ] No remaining features from the legacy UI are missing in the React GUI.
