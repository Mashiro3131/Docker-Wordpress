#!/bin/bash

# Start the containers in detached mode
docker-compose up -d

# docker-compose up --build


# # Check if the MySQL/MariaDB container is running
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
# if ! docker-compose exec db mysql -h db -u root -proot -e "SHOW DATABASES;" >/dev/null 2>&1; then
#   echo "Unable to connect to the MySQL/MariaDB server. Please check the configuration and try again."
#   exit 1
# fi

# # Restart the MySQL/MariaDB service
# if ! docker-compose restart db >/dev/null 2>&1; then
#   echo "Unable to restart the MySQL/MariaDB service. Please check the logs and fix the issue."
#   exit 1
# fi

# echo "MySQL/MariaDB server is running correctly. WordPress is available at http://localhost:8000/"

echo "WordPress est disponible sur http://localhost:8000/ !!"