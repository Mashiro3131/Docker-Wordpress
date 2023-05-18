#!/bin/bash

chmod +x "$0"

# Start containers
docker-compose up -d --build

# Start stopped containers
docker-compose start

# # Wait for a while before displaying logs and running containers
# sleep 10

# # Display logs
# docker-compose logs -f

# # Show running containers
# docker ps

# # Enter MySQL container
# docker exec -it mengisen-projetdocker-mysql-server bash










# # Comme ca pas besoin de faire chmod +x start.sh <3
# chmod +x "$0"

# # Crée les conteneurs 
# docker-compose up -d

# # Démarre les conteneurs eteints
# docker-compose start

# # Attend un petit moment avant d'afficher les logs et les conteneurs
# sleep 10

# # Montre les logs
# docker-compose logs -f

# # Montre les conteneurs en cours d'exécution
# docker ps






# VIEUX DUMP DE CODE



# # Stop and remove existing containers
# docker-compose down

# # Delete volumes
# docker volume rm mengisen-projetdocker-db

# # Rebuild and start the containers
# docker-compose up --build -d


# # Vérifie si le conteneur de la DB fonctionne

# if ! docker ps | grep -q "wordpress_db"; then
#   echo "The MySQL/MariaDB container is not running. Starting it now..."
#   docker-compose up -d db
# fi

# # Check the logs of the MySQL/MariaDB container for errors
# if docker-compose logs db | grep -q "ERROR"; then
#   echo "The MySQL/MariaDB container has errors. Please check the logs and fix the issue."
#   exit 1
# fi

# # Verify that the MySQL/MariaDB server is configured correctly
# if ! docker-compose exec db mysql -h db -u wordpress -p wordpress -e "SHOW DATABASES;" >/dev/null 2>&1; then
#   echo "Unable to connect to the MySQL/MariaDB server. Please check the configuration and try again."
#   exit 1
# fi

# # Restart the MySQL/MariaDB service
# if ! docker-compose restart db >/dev/null 2>&1; then
#   echo "Unable to restart the MySQL/MariaDB service. Please check the logs and fix the issue. Essayer : docker logs mengisen-projetdocker-db-1"
#   exit 1
# fi

# mariadb status

# echo "WordPress est disponible sur http://localhost:8000/ !!"
