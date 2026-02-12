# Technology Stack

## Backend (training-tracker)
- **Language:** Python 3.13.11
- **Framework:** Flask 3.1.1
- **ORM:** SQLAlchemy 2.0.41
- **API Support:** Flask-CORS 6.0.0 (configured for React integration)
- **Authentication:** Authlib 1.6.6 (Google OAuth 2.0), Flask-Login 0.6.3
- **Tooling:** Pytest 9.0.2 (testing), Ruff 0.15.0 (linting), Mypy 1.19.1 (static analysis)

## Frontend (training-tracker-gui)
- **Language:** TypeScript 5.9.3
- **Framework:** React 19.2.3
- **Build Tool:** Vite rolldown-vite@7.1.14
- **UI Library:** Material UI (MUI) 7.3.6
- **Package Manager:** Bun 1.3.9
- **Production Server:** Nginx (Containerized)
- **Tooling:** ESLint 9.39.2, Prettier 3.7.4

## Infrastructure & Security
- **Containerization:** Docker, Docker Compose (Multi-stage builds)
- **Orchestration:** Root-level Bash/Compose scripts for unified management
- **Cloud Services:** AWS (S3 for document storage, Secrets Manager)
- **Architecture:** Hybrid (Flask API/Legacy UI + React)
