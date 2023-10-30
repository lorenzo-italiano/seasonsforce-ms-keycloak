#!/bin/bash

# Path to the directory containing Dockerfiles
KEYCLOAK_DIR="keycloak-image"
POSTGRES_DIR="postgres-image"

# Docker image names
KEYCLOAK_IMAGE="keycloak-server"
POSTGRES_IMAGE="keycloak-db"

# Build json file for Keycloak realm import
# Check if we need to run brew, apt-get, etc. to install jq
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    echo "Using Linux"
    if ! command -v jq &> /dev/null
    then
        echo "jq could not be found. Installing jq..."
        sudo apt-get install jq
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    echo "Using Mac OSX"
    if ! command -v jq &> /dev/null
    then
        echo "jq could not be found. Installing jq..."
        brew install jq
    fi
fi
# Merge realm-config.json and default-users.json into realm-import.json
jq -s '.[0] * .[1]' keycloak-image/realm-config.json keycloak-image/default-users.json > keycloak-image/realm-import.json


# Build the Keycloak image
echo "Building Keycloak image..."
docker build -t "$KEYCLOAK_IMAGE" -f "$KEYCLOAK_DIR/Dockerfile" "$KEYCLOAK_DIR"

# Build the PostgreSQL image
echo "Building PostgreSQL image..."
docker build -t "$POSTGRES_IMAGE" -f "$POSTGRES_DIR/Dockerfile" "$POSTGRES_DIR"

echo "Build completed successfully."
