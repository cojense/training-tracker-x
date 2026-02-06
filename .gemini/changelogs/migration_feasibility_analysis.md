# Feasibility Analysis: Monolithic to Dual-Mode Migration

## Executive Summary
**Feasibility:** High
**Complexity:** Low to Moderate
**Risk:** Low (Non-destructive)

It is entirely possible—and actually the recommended best practice—to convert the existing monolithic Flask application into a "Dual-Mode" application. This means the application can continue to serve the existing HTML pages (keeping the current business running) while simultaneously serving new JSON API endpoints for the React frontend.

## 1. How easy is the conversion?

The conversion is **straightforward** because the codebase already follows a good separation of concerns.

*   **Logic is Separated:** The business logic (calculations) and database access are already separated into `trainingbackend/business/` and `trainingbackend/db.py`.
*   **Endpoints are Thin:** The existing files in `endpoints/` (like `index.py` or `trainings.py`) mostly just fetch data and pass it to `render_template`.
*   **No "Spaghetti":** We don't have to untangle complex logic from the HTML templates. We just need to create a new "door" to access the same data.

**The "Effort" Formula:**
For each page you want to convert:
1.  Look at the existing endpoint (e.g., `list_trainings`).
2.  Copy the data fetching lines.
3.  Paste them into a new API endpoint.
4.  Change `render_template(...)` to `jsonify(...)`.

## 2. Can we keep the monolith functional? (The "Hybrid" Approach)

**YES.** This is the "Strangler Fig" pattern. You build the new system around the edges of the old one until it eventually replaces it.

**How it works structurally:**
Flask uses "Blueprints" to organize routes. You currently have a `web_ui_blueprint`. We will simply add an `api_blueprint`.

*   **URL `/`**: Hits `web_ui_blueprint` -> Returns HTML (Old App)
*   **URL `/api/v1/`**: Hits `api_blueprint` -> Returns JSON (New App)

Both live in the same `app.py`, run in the same Docker container, and use the same database connection.

## 3. Implementation Plan: How to Start

### Step 1: Create the API "Container"
Create a folder `trainingbackend/endpoints/api/` and an `__init__.py` to define the blueprint.

```python
# trainingbackend/endpoints/api/__init__.py
from flask import Blueprint

# This defines that all routes here start with /api/v1
api_blueprint = Blueprint('api', __name__, url_prefix='/api/v1')

from . import users, trainings # We will make these next
```

### Step 2: Register the Blueprint
In `trainingbackend/tracker.py` (or wherever the app factory logic effectively resides, often `create_app` or just where blueprints are registered), register this new blueprint alongside the existing one.

```python
# In tracker.py or app setup
from trainingbackend.endpoints.api import api_blueprint
app.register_blueprint(api_blueprint)
```

### Step 3: Enable CORS
Since the React app runs on a different port (during development), you need to allow it to talk to the Flask app.

```python
# In trainingbackend/app.py
from flask_cors import CORS
CORS(app, resources={r"/api/*": {"origins": "*"}}, supports_credentials=True)
```

### Step 4: "Port" the First Endpoint
Let's convert the Homepage data (`index.py`).

**Existing (`index.py`):**
```python
@web_ui_blueprint.route('/')
def index():
    # ... checks login ...
    assignments = select_front_page_report(conn, current_user.id)
    return render_template("logged_in_index.html", assignments=assignments)
```

**New (`endpoints/api/dashboard.py`):**
```python
from flask import jsonify
from trainingbackend.db import select_front_page_report

@api_blueprint.route('/dashboard')
def dashboard_data():
    # Reuse the EXACT same DB function
    assignments = select_front_page_report(conn, current_user.id)
    
    # Convert rows to dictionary for JSON
    data = [dict(row) for row in assignments]
    return jsonify(data)
```

## Conclusion
You do not need to "burn the boats." You can build the API incrementally. Every time you need a feature in the new UI, you just add an endpoint for it. The old UI continues to work 100% of the time until you decide to turn it off.
