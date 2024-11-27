#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

cd requirements

echo "Don't forget to run your Docker engine!"

echo "Starting to build the Docker image..."
docker build -t surdur-image . || { echo "Failed to build the image"; exit 1; }

echo "Built the Docker image."

echo "Composing the image up..."
docker compose up || { echo "Failed to compose up"; exit 1; }
