# Plan: Hybrid API Conversion Branch

**Branch Name:** `feature/hybrid-api-bridge`

## Objective
Establish the infrastructure required to serve the existing Flask application as a RESTful API for the new React frontend, while maintaining full functionality of the legacy Jinja2 template views. This supports a gradual, non-destructive migration.

## Reference Materials
*   **Meeting Notes:** `GEMINI-CHANGELOGS/Notes - Internal apps tag up.odt`
*   **Migration Guide:** `training-tracker/API_MIGRATION_PLAN.md`

## Implementation Steps

### 1. Infrastructure Setup
*   **Dependencies:** Add `Flask-Cors` to `training-tracker/requirements.txt`.
*   **CORS Configuration:** Update `training-tracker/trainingbackend/app.py` to allow cross-origin requests from `http://localhost:5173` (Vite default) with credentials enabled.
*   **Blueprint Creation:**
    *   Create directory `training-tracker/trainingbackend/endpoints/api/`.
    *   Initialize `api` blueprint with `url_prefix='/api/v1'`.
    *   Register blueprint in `training-tracker/trainingbackend/tracker.py`.

### 2. Authentication Bridge
*   **Redirect Logic:** Modify `training-tracker/trainingbackend/endpoints/oauth2.py`. After successful Google OAuth login, redirect the user to the frontend application (`http://localhost:5173/`) instead of the backend root.
*   **Session Verification:** Create endpoint `/api/v1/me` in `training-tracker/trainingbackend/endpoints/api/users.py` to return current user session status and details (JSON) to the React client.

### 3. Proof of Concept (Vertical Slice)
*   **Target:** Training List.
*   **Action:** Create `training-tracker/trainingbackend/endpoints/api/trainings.py`.
*   **Logic:** Re-implement the logic from `list_trainings` to return a JSON list of training objects instead of rendering `trainings.html`.
*   **Verification:** Ensure React frontend can fetch and display this list using the existing `TrainingDueTable` or a new component.

## Future State
Once this branch is merged, the repository will support "Dual-Mode" operation:
1.  **Legacy:** Users can still access the app via port 5000 (standard server-side rendering).
2.  **Modern:** Developers can run the React app (port 5173), which authenticates via port 5000 and consumes data via `/api/v1/*`.
