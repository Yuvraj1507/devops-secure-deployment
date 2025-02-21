#!/bin/bash

# Define the container image to scan
IMAGE_NAME="nginx:latest"

# Run Trivy scan
echo "Running Trivy security scan for $IMAGE_NAME..."
trivy image $IMAGE_NAME
