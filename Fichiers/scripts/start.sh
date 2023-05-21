#!/bin/bash

chmod +x "$0"


# DOCKER-COMPOSE

# Supprime les anciens conteneurs
docker-compose down --volumes --remove-orphans

# Nettoie les images et les volumes
docker system prune -a --volumes --force

# Construit les images et lance les conteneurs
docker-compose up -d --build

# MYSQL

# Wait for the MySQL container to be ready
until docker-compose exec mysql mysqladmin ping -h "mysql" --silent; do
    echo "La patience est une vertue, maintenant attendez que le conteneur mysql soit prêt..."
    sleep 2
done

# Crée les utilisateurs et la base de données
docker-compose exec mysql mysql -u root -prootpress -e "CREATE DATABASE IF NOT EXISTS wordpress;"
docker-compose exec mysql mysql -u root -prootpress -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'wordpress';"
docker-compose exec mysql mysql -u root -prootpress -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';"
docker-compose exec mysql mysql -u root -prootpress -e "FLUSH PRIVILEGES;"

echo "WordPress tourne sur http://127.0.0.1:8080"