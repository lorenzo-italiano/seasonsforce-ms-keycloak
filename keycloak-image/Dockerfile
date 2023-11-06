# Using Keycloak 22.0.4
FROM quay.io/keycloak/keycloak:22.0.4

# Import the realm
COPY realm-import.json /opt/keycloak/data/import/realm-import.json

# Admin console custom theme
RUN mkdir -p /opt/keycloak/themes/customTheme/admin/resources
COPY assets/logo.svg /opt/keycloak/themes/customTheme/admin/resources/logo.svg
COPY assets/theme.properties /opt/keycloak/themes/customTheme/admin/theme.properties

# TODO enlever le dev
# Start Keycloak in development mode, using custom database (PostgreSQL)
CMD ["start-dev", "--import-realm"]