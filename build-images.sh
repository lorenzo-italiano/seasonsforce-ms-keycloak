#!/bin/bash

# Path to the directory containing Dockerfiles
KEYCLOAK_DIR="keycloak-image"
POSTGRES_DIR="postgres-image"

# Docker image names
KEYCLOAK_IMAGE="keycloak-srv"
POSTGRES_IMAGE="keycloak-db"

# Build the Keycloak image
echo "Building Keycloak image..."
docker build -t "$KEYCLOAK_IMAGE" -f "$KEYCLOAK_DIR/Dockerfile" "$KEYCLOAK_DIR"

# Build the PostgreSQL image
echo "Building PostgreSQL image..."
docker build -t "$POSTGRES_IMAGE" -f "$POSTGRES_DIR/Dockerfile" "$POSTGRES_DIR"

echo "Build completed successfully."
