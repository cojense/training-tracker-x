# Meeting Agenda Expansion: Cross-Project & Work Division

## 1. Internal Apps: Compt Replacement Strategy
*Context: A colleague is building a replacement for "Compt".*

*   **Objective:** Offer support and seek architectural alignment.
*   **Key Questions:**
    *   "What is the tech stack for the Compt replacement? (React/Flask too?)"
    *   "How are you handling Authentication? Can we share the Google OAuth logic?"
    *   "Are you building a standalone API? If so, we should align our API standards (JSON structure, error handling)."
*   **The "Helper" Angle:**
    *   If they are struggling with the API-to-Frontend bridge, offer your "API First" approach on Training Tracker as a reference implementation.
    *   "I'm setting up a decoupled API pattern for Training Tracker. If that works well, it might be a good template for the Compt app to keep our internal tools consistent."

## 2. Training Tracker: Division of Labor
*Context: Moving from a Monolith to Decoupled (API + Client).*

*   **The Challenge:** Avoiding "stepping on toes" while migrating.
*   **Proposed Strategy: Infrastructure First, Then Features.**

### Phase 1: The "Unblocking" Phase (Days 1-2)
*   **Your Role (Backend/Infra):**
    *   Set up `Flask-Cors`.
    *   Configure the API Blueprint.
    *   Establish the Authentication Handshake (Redirect to React).
    *   *Deliverable:* A single working endpoint (e.g., `/api/v1/me`) that the React app can call.
*   **Colleague's Role (Frontend/Components):**
    *   Build the *dumb* React components (UI only, no data fetching yet).
    *   Use the `testData.ts` files (already in the repo) to build views.
    *   *Deliverable:* Visual parity for "Home", "Profile", "Training List" using mock data.

### Phase 2: Vertical Feature Slicing (Ongoing)
Once the API bridge is established, divide work by **Feature**, not layer.
*   **Person A (e.g., You):** "User Management"
    *   Backend: `api/users.py` (GET /users, POST /users)
    *   Frontend: `UserListView.tsx`, `UserEditView.tsx`
*   **Person B:** "Training Events"
    *   Backend: `api/events.py`
    *   Frontend: `RecordTrainingEventView.tsx`

*   **Why this works:** It prevents the "I'm waiting for the API" excuse. If you own the feature, you build the API endpoint you need.

## 3. Synthesis
*   By proving the API model on Training Tracker, you create a standard for the Compt replacement.
*   By dividing work into "Infra" then "Vertical Slices," you ensure the team isn't blocked by the architectural shift.
