#!/bin/bash

echo "Starting Kafka services..."
docker compose up -d

echo "Waiting for services to start (30 seconds)..."
sleep 30

# Open browser based on operating system
case "$(uname -s)" in
    Darwin)    # macOS
        open http://localhost:9000
        ;;
    Linux)     # Linux with xdg-open
        xdg-open http://localhost:9000
        ;;
    MINGW*)    # Windows Git Bash
        start http://localhost:9000
        ;;
esac

echo "Kafdrop is running at http://localhost:9000"
