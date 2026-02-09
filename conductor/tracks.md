# Project Tracks

This file tracks all major tracks for the project. Each track has its own detailed plan in its respective folder.

---

- [x] **Track: Functional Parity - Training Management**
  *Link: [./tracks/functional_parity_20260206/](./tracks/functional_parity_20260206/)*

---

- [x] **Track: File Lifecycle Verification (Upload, Retrieve, Modify)**
*Link: [./tracks/file_lifecycle_20260206/](./tracks/file_lifecycle_20260206/)*

---

- [~] **Track: Functional Parity - User Detail and Navigation**
*Link: [./tracks/user_detail_parity_20260206/](./tracks/user_detail_parity_20260206/)*

```python
TRAINING_TRACKER_GUI : {
    headline: "main: feat(ui) - Complete functional parity for User Detail view and navigation",
    summary: """
    - Implemented generic UserDetailView to display any user's profile data.
    - Updated api.ts with methods for fetching user-specific assignments, groups, and records.
    - Integrated UserDetail links into UserListView, ManagerReportView, SupervisorView, and ApprovalQueueView.
    - Added comprehensive unit tests for UserDetailView, UserListView, ManagerReportView, SupervisorView, and Profile.
    - Fixed compilation errors in ApprovalQueueView and SupervisorView due to missing imports.
    """,
},
```

---

- [~] **Track: Submodule Encapsulation and Orchestration**
*Link: [./tracks/encapsulation_20260208/](./tracks/encapsulation_20260208/)*
