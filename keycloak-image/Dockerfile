# Using Keycloak 22.0.4
FROM quay.io/keycloak/keycloak:22.0.4

# Define environment variables for Keycloak admin user
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Define environment variables for Keycloak database
ENV DB_VENDOR=POSTGRES
ENV DB_ADDR=db
ENV DB_DATABASE=keycloak
ENV DB_USER=keycloak
ENV DB_PASSWORD=password

# TODO enlever le dev
# Start Keycloak in development mode, using custom database (PostgreSQL)
CMD ["start-dev", "--db", "postgres", "--db-username", "keycloak", "--db-password", "password", "--db-url-host", "keycloak-db", "--health-enabled", "true"]