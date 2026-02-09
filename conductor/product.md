# Initial Concept
This is a dual repository, where the training-tracker/ one is a complete API flask environment ready for training-tracker-gui/ to use.

# Product Definition

## Vision
The ShyftDev Training Tracker is a secure, centralized system designed to safely manage employee training compliance and provide operational visibility for the organization. It provides a modern, responsive user interface (React) backed by a robust RESTful API (Flask).

## Target Users
- **Employees:** Can view assigned trainings, record completions, and upload supporting documentation via a responsive web interface.
- **Supervisors/Managers:** Can assign training to their teams, track progress, and view real-time compliance dashboards.
- **Training Administrators:** Can create training modules, manage global settings, and oversee the entire organization's training health.

## Core Goals
- **Safe Compliance Tracking:** Ensure mandatory certifications and renewals are accurately recorded and persistent, providing a robust audit trail.
- **Operational Visibility:** Provide managers with real-time insights into their team's training status to ensure readiness and safety.
- **Modernized Experience:** Successfully migrated all legacy server-rendered pages to a modern, responsive React/TypeScript frontend while maintaining core business logic parity.
- **Data Integrity & Privacy:** Maintain high standards for record accuracy and restrict access based on established user roles.

## Key Features
- **Modern GUI:** A TypeScript/React frontend using Material UI for a professional and consistent user experience.
- **RESTful API:** A Python/Flask backend providing the data layer and business logic for the frontend.
- **Unified Orchestration:** Standardized startup and deployment workflows for development and production.
- **Automated Workflows:** Service-backed electronic approval processes for completed trainings and certificate management.
- **Secure Document Storage:** Management of uploaded certificates and attachments using AWS infrastructure.
- **Authentication:** Secure access via Google OAuth restricted to the organization domain.