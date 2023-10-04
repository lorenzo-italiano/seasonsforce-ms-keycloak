# Utilisation de l'image de base JBoss Keycloak
FROM quay.io/keycloak/keycloak:22.0.4

## Définition des variables d'environnement pour l'utilisateur et le mot de passe de l'administrateur Keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Exposer le port sur lequel Keycloak écoute (8080 par défaut)
#EXPOSE 8080

# TODO enlever le dev
CMD ["start-dev"]