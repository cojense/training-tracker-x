# Project: ShyftDev Training Tracker

## Project Overview

This repository contains the source code for the ShyftDev Training Tracker, a full-stack web application designed to help managers assign and track employee training. The project is split into two main components, located in their respective subdirectories:

*   **`training-tracker`**: A Python/Flask backend that provides a RESTful API, handles all business logic, data persistence, and serves the initial version of the UI using Jinja2 templates.
*   **`training-tracker-gui`**: A modern TypeScript/React frontend designed to provide a rich, responsive user interface, eventually replacing the server-rendered pages from the backend.

## High-Level Architecture

The frontend (`training-tracker-gui`) communicates with the backend (`training-tracker`) via REST API calls. Authentication is handled via Google OAuth, with the backend managing user sessions and the frontend consuming the authentication state.

---

## Backend (`training-tracker`)

This is a Python/Flask application that serves as the API and data layer for the training tracker.

### Key Technologies

*   **Backend:** Python, Flask
*   **Database:** SQLAlchemy (compatible with SQLite, PostgreSQL, etc.)
*   **Deployment:** Docker, Gunicorn
*   **Authentication:** Flask-Login, Google OAuth (via Authlib)
*   **Frontend:** Jinja2 templates, vanilla JavaScript

### Building and Running

The application is designed to be run with Docker and `docker-compose`.

1.  **Prerequisites:**
    *   Docker
    *   `docker-compose`

2.  **Environment Variables:**
    The `docker-compose.yml` file expects several environment variables for configuration, including database connection strings and AWS credentials for secrets management.

3.  **Build and Run:**
    To build and run the application, execute the following command from the `training-tracker` directory:
    ```bash
    docker-compose up --build
    ```
    The application will be available at `http://127.0.0.1:5000`.

*For more detailed information, see the `GEMINI.md` file in the `training-tracker/` directory.*

---

## Frontend (`training-tracker-gui`)

A TypeScript React application that provides a modern graphical interface for the training tracker.

### Key Technologies

*   **Framework:** React
*   **Language:** TypeScript
*   **Build Tool:** Vite
*   **UI:** Material UI (MUI)
*   **Package Manager:** Bun

### Building and Running

1.  **Prerequisites:**
    *   Bun
    *   A Google OAuth Client ID

2.  **Environment Variables:**
    Create a `.env` file in the `training-tracker-gui` directory with your Google OAuth Client ID:
    ```
    VITE_OAUTH_Client_ID=your_google_oauth_client_id
    ```

3.  **Installation & Development:**
    From the `training-tracker-gui` directory, run:
    ```bash
    bun install
    bun start
    ```
    This will start the Vite development server.

*For more detailed information, see the `GEMINI.md` file in the `training-tracker-gui/` directory.*
