
  Roadmap: Migrating to a Full React Frontend

  This plan is divided into four main phases: Analysis & API Definition, Frontend Foundation, Feature Implementation, and Finalization.

  Phase 1: Analysis & API Definition

  The first step is to ensure the backend can support a completely separate frontend. This means creating a complete RESTful API.

   * 1.1. Audit Existing Backend Endpoints:
       * Analyze the routes in training-tracker/trainingbackend/endpoints/.
       * Identify which routes serve HTML pages (e.g., in web_ui.py) and which already serve JSON data.

   * 1.2. Define the Target API Surface:
       * For every page and form currently rendered with Jinja2 templates (training-tracker/trainingbackend/templates/), define a
         corresponding RESTful API endpoint.
       * Example: The trainings.html page, which lists trainings, should be powered by a GET /api/trainings endpoint that returns a
         JSON array of training objects. The create_training.html form should submit to a POST /api/trainings endpoint.

   * 1.3. Implement API Parity in Flask:
       * Create new blueprints or modify existing ones in Flask to implement any missing API endpoints identified in the previous step.
       * Ensure all data needed by the frontend is exposed via these JSON-based endpoints. This is critical before significant frontend
         work begins.

  Phase 2: Frontend Foundation

  With a clear API contract, you can build the core of the React application.

   * 2.1. Set Up Testing:
       * Integrate Vitest and React Testing Library into the training-tracker-gui project to enable unit and component testing from the
         start.

   * 2.2. Implement Authentication:
       * Build out the client-side authentication logic in src/AuthContext.tsx.
       * Create the login page (src/views/LoginView.tsx) to handle the Google OAuth flow by redirecting to the backend's OAuth
         endpoint.
       * Implement route protection so that only authenticated users can access certain parts of the application.

   * 2.3. Create a Centralized API Client:
       * Develop a robust API service module in src/utilities/api.ts.
       * This module will handle all fetch requests to the backend, automatically attach authentication tokens, handle base URLs, and
         standardize error handling.

  Phase 3: Feature Implementation (View by View)

  This is the largest phase. The strategy is to migrate one feature at a time, replacing the old Jinja2 pages with new React views.

   * 3.1. Prioritize Feature Migration:
       * A logical order for migration would be:
           1. Home/Dashboard: Display summary information for the logged-in user.
           2. Read-Only Lists: Implement views to display lists of Trainings, Users, Projects, and Groups.
           3. Detail Views: Create views to show the details of a single Training, User, etc.
           4. Create/Edit Forms: Implement forms for creating and updating all data types.
           5. Complex Reports: Re-implement specialized views like Supervisor Report and Training Manager Report.

   * 3.2. Develop Components and Views:
       * For each feature, create the necessary reusable components (in src/components/) and page-level views (in src/views/).
       * Leverage the Material UI component library to ensure a consistent and professional design.
       * Use React Router for navigation between views.

  Phase 4: Finalization & Backend Simplification

  Once the React application has achieved full feature parity with the old UI, you can decouple the two projects.

   * 4.1. Simplify the Flask Backend:
       * Delete the training-tracker/trainingbackend/templates/ directory.
       * Delete the training-tracker/trainingbackend/static/ directory and its contents.
       * Remove all Flask routes that were serving HTML pages (like the web_ui.py blueprint). The backend is now a pure API server.

   * 4.2. Configure for Production:
       * CORS: Ensure the Flask server is configured to accept requests from the domain where the React app will be hosted.
       * Deployment Strategy: Decide how to host the final application. A common approach is to:
           1. Build the static React app using bun run build.
           2. Serve the resulting static files (from the dist folder) using a web server like Nginx, which also acts as a reverse proxy
              for the backend API.

  Following this roadmap will provide a structured path to modernizing your application, resulting in a clean separation between the frontend and backend.