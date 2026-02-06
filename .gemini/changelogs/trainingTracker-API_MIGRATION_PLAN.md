# API Migration Plan for ShyftDev Training Tracker

This guide outlines the steps to transform the existing server-side rendered Flask application (`training-tracker`) into a RESTful API that powers the modern React frontend (`training-tracker-gui`).

## High-Level Architecture

*   **Current State:** Flask serves HTML templates + logic + static files.
*   **Target State:**
    *   **Backend (`training-tracker`):** Serves JSON data via API endpoints. Handles DB and Auth.
    *   **Frontend (`training-tracker-gui`):** Consumes API, manages UI state.

## Phase 1: Backend Preparation

### 1. Install Dependencies
You need `flask-cors` to allow the React app (running on a different port) to talk to the Flask app.

Add to `training-tracker/requirements.txt`:
```text
Flask-Cors
```

### 2. Configure CORS
In `training-tracker/trainingbackend/app.py`:

```python
from flask_cors import CORS

# ... existing app setup ...

# Allow requests from the frontend dev server (Vite defaults to port 5173)
# supports_credentials=True is CRITICAL for sharing the login session cookie.
CORS(app, resources={r"/api/*": {"origins": "http://localhost:5173"}}, supports_credentials=True)
```

### 3. Create API Blueprint
Create a structure for the new API routes to keep them separate from old HTML routes.

Create `training-tracker/trainingbackend/endpoints/api/__init__.py`:
```python
from flask import Blueprint

api_blueprint = Blueprint('api', __name__, url_prefix='/api/v1')

from . import users, trainings, projects  # Import modules as you create them
```

Register this blueprint in `training-tracker/trainingbackend/tracker.py`.

## Phase 2: Authentication Bridge

The current app uses `Flask-Login` which sets a session cookie. We can reuse this for simplicity.

### 1. Update Login Flow
The React app cannot "render" the Google Login page directly inside itself easily.
**Flow:**
1.  React "Login" button links to `http://localhost:5000/login/google`.
2.  User logs in with Google.
3.  Google redirects to Backend `/auth/google`.
4.  Backend sets session cookie.
5.  **CHANGE:** Backend redirects to `http://localhost:5173/` (Frontend) instead of `/` (Backend HTML).

Update `training-tracker/trainingbackend/endpoints/oauth2.py`:
```python
# ... inside handle_authorize ...
login_user(user)

# Redirect to the Frontend app
return redirect("http://localhost:5173/") 
```

### 2. Verify Session Endpoint
Create an endpoint for the React app to check "Am I logged in?" and get user details.

Create `training-tracker/trainingbackend/endpoints/api/users.py`:
```python
from flask import jsonify
from flask_login import current_user, login_required
from trainingbackend.endpoints.api import api_blueprint

@api_blueprint.route('/me')
def get_current_user():
    if not current_user.is_authenticated:
        return jsonify({"authenticated": False}), 401
    
    return jsonify({
        "authenticated": True,
        "id": current_user.id,
        "email": current_user.email,
        "firstName": current_user.first_name,
        "lastName": current_user.last_name,
        "roles": current_user.roles  # Assuming roles exist
    })
```

## Phase 3: Migrating Logic (Iterative)

Don't rewrite everything at once. Pick one feature (e.g., "My Assignments").

1.  **Identify Logic:** Look at `trainingbackend/endpoints/index.py`. It uses `select_front_page_report`.
2.  **Create API Endpoint:**
    *   Create `trainingbackend/endpoints/api/assignments.py`.
    *   Import `select_front_page_report` from `trainingbackend.db`.
    *   Create a route that calls this function and returns the data as a list of dictionaries (JSON).
3.  **Frontend Consume:**
    *   In React, use `fetch('/api/v1/assignments')`.

## Example: converting `index.py` logic

**Old (`index.py`):**
```python
@web_ui_blueprint.route('/')
def index():
    # ... checks login ...
    assignments = select_front_page_report(conn, current_user.id)
    return render_template("logged_in_index.html", assignments=assignments)
```

**New (`endpoints/api/assignments.py`):**
```python
@api_blueprint.route('/my-assignments')
@login_required
def my_assignments():
    with engine.begin() as conn:
        assignments = select_front_page_report(conn, current_user.id)
    
    # Convert SQLAlchemy/Row objects to dicts
    data = [dict(row._mapping) for row in assignments] 
    return jsonify(data)
```

## Phase 4: Frontend Development

1.  **Proxy (Optional but recommended):** Configure Vite to proxy `/api` requests to `http://localhost:5000` to avoid CORS issues during dev, OR ensure the CORS setup in Phase 1 is correct.
2.  **API Client:** Update `src/utilities/api.ts` to handle the fetching logic.

```typescript
// src/utilities/api.ts
export const fetchUser = async () => {
    const response = await fetch('http://localhost:5000/api/v1/me', {
        credentials: 'include' // IMPORTANT: Sends the cookies
    });
    if (!response.ok) throw new Error('Not logged in');
    return response.json();
};
```
