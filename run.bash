#!/bin/bash

# Root orchestration script for ShyftDev Training Tracker

# Default settings
NATIVE=false
START_BACKEND=false
START_GUI=false
ALL_SERVICES=true

show_help() {
    echo "Usage: ./run.bash [option]"
    echo ""
    echo "Options:"
    echo "  --backend    Start only the Flask API (backend)"
    echo "  --gui        Start only the React GUI (frontend)"
    echo "  --all        Start both backend and frontend (default)"
    echo "  --native     Run without Docker (requires local environment setup)"
    echo "  --help       Show this help message"
}

# Parse arguments
for arg in "$@"; do
    case $arg in
        --native)
            NATIVE=true
            ;;
        --backend)
            START_BACKEND=true
            ALL_SERVICES=false
            ;;
        --gui)
            START_GUI=true
            ALL_SERVICES=false
            ;;
        --all)
            START_BACKEND=true
            START_GUI=true
            ALL_SERVICES=false
            ;;
        --help)
            show_help
            exit 0
            ;;
    esac
done

# If no specific service was requested, start both
if [ "$ALL_SERVICES" = true ]; then
    START_BACKEND=true
    START_GUI=true
fi

cleanup() {
    echo ""
    echo "Stopping all services..."
    if [ "$NATIVE" = true ]; then
        # Terminate background jobs
        jobs -p | xargs kill 2>/dev/null
    else
        docker-compose down
    fi
    exit
}

trap cleanup SIGINT SIGTERM

if [ "$NATIVE" = true ]; then
    echo "Starting in NATIVE mode..."
    
    if [ "$START_BACKEND" = true ]; then
        echo "Launching Backend..."
        (cd training-tracker && ./run.bash --native) &
    fi

    if [ "$START_GUI" = true ]; then
        echo "Launching Frontend..."
        (cd training-tracker-gui && ./run.bash --native) &
    fi
    
    # Wait for background processes
    wait
else
    echo "Starting in DOCKER mode..."
    # Ensure a clean start by taking down any existing services
    docker-compose down

    if [ "$START_BACKEND" = true ] && [ "$START_GUI" = true ]; then
        docker-compose up --build
    elif [ "$START_BACKEND" = true ]; then
        docker-compose up --build backend
    elif [ "$START_GUI" = true ]; then
        docker-compose up --build frontend
    fi
fi
