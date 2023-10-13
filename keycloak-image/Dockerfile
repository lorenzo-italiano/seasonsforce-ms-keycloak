# Using Keycloak 22.0.4
FROM quay.io/keycloak/keycloak:22.0.4

COPY realm-config.json /opt/keycloak/data/import/realm-config.json

# TODO enlever le dev
# Start Keycloak in development mode, using custom database (PostgreSQL)
CMD ["start-dev", "--import-realm"]