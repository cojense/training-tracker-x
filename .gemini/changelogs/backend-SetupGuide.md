Here is a step-by-step guide to setting up the Training Tracker locally on your macOS machine. This will allow you to run the application and view the existing Jinja2-based GUI.

### **Local Setup Guide**

Since you haven't set up your environment variables yet, we will configure the system to use a local SQLite database and a special "developer login" to bypass the need for real Google OAuth credentials.

#### **1. Environment Configuration**

Create your local configuration file by copying the example.

```bash
cp .env.example .env
```

The default settings in `.env.example` are already set up for local development:
*   `FLASK_ENV=development`: Enables debug mode.
*   `CONNECT_STRING=sqlite:///./db/dev.db`: Points to a local file database.
*   `USE_AWS_SECRETS=false`: Disables cloud dependencies.

#### **2. Database Setup**

You need to create and populate the local SQLite database. A script is provided to handle this.

1.  Navigate to the SQL directory and run the setup script:
    ```bash
    cd sql
    chmod +x make-dev-db.bash
    ./make-dev-db.bash
    cd ..
    ```
    *(This creates `db/dev.db` and populates it with sample data.)*

#### **3. Run the Application**

We will run the application using a local Python virtual environment. This is often faster than Docker for quick UI checks.

1.  **Create and Activate Virtual Environment:**
    ```bash
    python3 -m venv .venv
    source .venv/bin/activate
    ```

2.  **Install Dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

3.  **Start the Server:**
    ```bash
    flask --app trainingbackend.tracker run --debug --port 5000
    ```

#### **4. Accessing the GUI**

1.  Open your web browser to: **[http://localhost:5000](http://localhost:5000)**
2.  You will see a "Login with Google" button. **Do not click it** (it won't work without valid credentials).
3.  **Use the Developer Bypass:** Instead, navigate to this specific URL to auto-login as a test administrator:
    **[http://localhost:5000/oauth2/dev/login](http://localhost:5000/oauth2/dev/login)**

This will log you in as `justin@shyftsolutions.io` and redirect you to the main dashboard where you can explore the interface.