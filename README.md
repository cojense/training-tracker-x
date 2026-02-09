# ShyftDev Training Tracker

A full-stack application for managing and tracking employee training compliance.

## Architecture
This project is a multi-repository system managed with git submodules:
- `training-tracker/`: Python/Flask REST API and data layer.
- `training-tracker-gui/`: TypeScript/React frontend using Material UI.

## Getting Started

### Prerequisites
- [Docker](https://www.docker.com/) and `docker-compose`
- [Bun](https://bun.sh/) (for local development)
- [Python 3.11+](for native backend development)

### Quick Start (Docker)
The easiest way to run the entire stack is using Docker Compose from the root:
```bash
docker-compose up --build
```
- Backend API: http://localhost:5001
- Frontend GUI: http://localhost:8080

### Development (Native)
You can run both services natively using the orchestration script:
```bash
./run.bash
```
- Frontend: http://localhost:5173
- Backend: http://localhost:5001

## Documentation
- [API Route Mapping](./API_MAPPING.md)
- [Conductor Development Framework](./conductor/index.md)
