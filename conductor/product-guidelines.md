# Product Guidelines

## Prose Style & Documentation
- **Professional & Functional Tone:** Communication within the application and its documentation must be concise, direct, and focused on operational efficiency.
- **Minimalist Documentation:** Adhere to a "less is more" approach for external documentation. The root `README.md` should focus on the multi-repo structure and high-level setup.
- **Code Documentation:** Prioritize the use of clear, descriptive docstrings (Python) and TSDoc (TypeScript) to ensure the code remains self-documenting.

## UI/UX Principles
- **Material Design (MUI):** The React frontend must adhere strictly to Material-UI components and principles to ensure a consistent and robust user interface.
- **Efficiency & Data Density:** Interfaces should prioritize compact layouts, especially for management dashboards, to allow for scanning large volumes of training data.
- **Modern & Responsive:** All new frontend development must be mobile-responsive to support employees recording completions in diverse environments.

## Design Standards
- **Component Reusability:** Favor the creation of small, atomic React components to ensure maintainability and consistency across the GUI.
- **Consistency:** All styling should leverage the MUI theme system rather than hardcoded CSS values.

## Error Handling & Validation
- **Non-Intrusive Feedback:** Use snackbars and inline alerts for asynchronous feedback (e.g., training completion updates).
- **Security-Conscious Messaging:** Ensure error messages do not leak sensitive system information or user existence to unauthenticated users.
