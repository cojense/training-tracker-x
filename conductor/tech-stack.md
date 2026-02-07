# Technology Stack

## Backend (training-tracker)
- **Language:** Python 3.13
- **Framework:** Flask 3.1.1
- **ORM:** SQLAlchemy 2.0.41
- **API Support:** Flask-CORS 5.0.1 (configured for React integration)
- **Authentication:** Authlib (Google OAuth 2.0), Flask-Login
- **Tooling:** Pytest (testing), Ruff (linting), Mypy (static analysis)

## Frontend (training-tracker-gui)
- **Language:** TypeScript
- **Framework:** React 19
- **Build Tool:** Vite
- **UI Library:** Material UI (MUI) 7
- **Package Manager:** Bun
- **Tooling:** ESLint, Prettier

## Infrastructure & Security
- **Containerization:** Docker, Docker Compose
- **Cloud Services:** AWS (S3 for document storage, Secrets Manager)
- **Architecture:** Hybrid (Flask API/Legacy UI + React SPA)
