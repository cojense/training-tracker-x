#!/bin/bash

# Root orchestration script for ShyftDev Training Tracker

show_help() {
    echo "Usage: ./run.bash [option]"
    echo ""
    echo "Options:"
    echo "  --backend    Start only the Flask API (backend)"
    echo "  --gui        Start only the React GUI (frontend)"
    echo "  --all        Start both backend and frontend (default)"
    echo "  --help       Show this help message"
}

cleanup() {
    echo "Stopping all services..."
    docker-compose down
    # Kill the entire process group to ensure children die
    kill -- -$$ 2>/dev/null
    exit
}

trap cleanup SIGINT SIGTERM

# Ensure a clean start by taking down any existing docker-compose services
docker-compose down

START_BACKEND=false
START_GUI=false

if [ $# -eq 0 ] || [ "$1" == "--all" ]; then
    START_BACKEND=true
    START_GUI=true
elif [ "$1" == "--backend" ]; then
    START_BACKEND=true
elif [ "$1" == "--gui" ]; then
    START_GUI=true
elif [ "$1" == "--help" ]; then
    show_help
    exit 0
else
    echo "Unknown option: $1"
    show_help
    exit 1
fi

if [ "$START_BACKEND" = true ]; then
    echo "Starting Backend..."
    # Delegate to backend run.bash (using docker by default as per existing script)
    # However, if native is preferred for local dev, we might want to check.
    # The spec says: 'Root orchestration ... delegates to submodule run.bash scripts'
    (cd training-tracker && ./run.bash) &
fi

if [ "$START_GUI" = true ]; then
    echo "Starting Frontend..."
    (cd training-tracker-gui && ./run.bash) &
fi

wait