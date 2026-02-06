# Hybrid Monolith Setup Guide (Python + React)

## Current Status: ⚠️ Partially Implemented & Broken
You currently have the **structure** for a hybrid app (serving both HTML and JSON), but it is in a broken state.
*   `trainingbackend/endpoints/api/` exists.
*   `tracker.py` tries to load it.
*   `api/__init__.py` tries to import `users` and `trainings`.
*   **Critical Error:** `users.py` and `trainings.py` are missing from the `api` folder. The app will fail to start.

## Step-by-Step Fix & Setup

### 1. Fix the Crash (Immediate)
Create the missing files so the app can start.
*   Create `training-tracker/trainingbackend/endpoints/api/users.py` (Empty or basic blueprint route).
*   Create `training-tracker/trainingbackend/endpoints/api/trainings.py` (Empty or basic blueprint route).

### 2. Install Dependencies
The React frontend (port 5173) needs permission to talk to the Flask backend (port 5000).
*   Add `Flask-Cors` to `training-tracker/requirements.txt`.
*   Run `pip install -r requirements.txt`.

### 3. Configure CORS in `app.py`
Update `training-tracker/trainingbackend/app.py` to allow cross-origin requests.

```python
from flask_cors import CORS

app = Flask(__name__)
# Allow requests from the Vite dev server
CORS(app, resources={r"/api/*": {"origins": "http://localhost:5173"}}, supports_credentials=True)
```

### 4. Implement Your First API Endpoint
Edit `training-tracker/trainingbackend/endpoints/api/trainings.py`.
Instead of `render_template`, use `jsonify`.

```python
from flask import jsonify
from trainingbackend.endpoints.api import api_blueprint
from trainingbackend.db import engine, select_trainings

@api_blueprint.route('/trainings')
def list_trainings():
    with engine.begin() as conn:
        trainings = select_trainings(conn)
    
    # Convert Row objects to Dictionaries
    data = [dict(row._mapping) for row in trainings]
    return jsonify(data)
```

### 5. Verify It Works
*   Start the backend: `docker-compose up` (or `python run.bash`).
*   Visit `http://localhost:5000/api/v1/trainings`.
*   You should see raw JSON data.

### 6. Connect the React App
Now you can safely edit the frontend to consume this data without breaking the existing Jinja2 application.
