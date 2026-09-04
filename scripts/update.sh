#!/bin/bash
set -e

echo "Pulling latest changes..."
git pull

echo "Pulling latest images..."
docker compose pull

echo "Restarting services..."
docker compose up -d --force-recreate

echo "Cleaning up old images..."
docker image prune -f

echo "Update complete!"
docker compose ps
