# #!/bin/bash

# # Check if the MySQL/MariaDB container is running
# if ! docker ps | grep -q "db-1"; then
#   echo "MariaDB n'est pas up. Démarrage en cours..."
#   docker start db-1
# fi

# # Regarde les logs du conteneur pour voir s'il y a des erreurs
# if docker logs db-1 | grep -q "ERROR"; then
#   echo "The MySQL/MariaDB container has errors. Aller vérifier les logs et régler le soucis."
#   exit 1
# fi

# # Verify that the MySQL/MariaDB server is configured correctly
# if ! mysql -h <mysql/mariadb_host> -u <mysql/mariadb_user> -p<mysql/mariadb_password> -e "SHOW DATABASES;" >/dev/null 2>&1; then
#   echo "Unable to connect to the MySQL/MariaDB server. Please check the configuration and try again."
#   exit 1
# fi

# # Restart the MySQL/MariaDB service
# if ! service mysql restart >/dev/null 2>&1; then
#   echo "Impossible redémarrer MariaDB. Aller vérifier les logs et régler le soucis."
#   exit 1
# fi

# echo "MySQL/MariaDB server is running correctly. WordPress is available at http://localhost:8000/"


#!/bin/bash

# Check if the MySQL/MariaDB container is running
if ! docker ps | grep -q "wordpress_db"; then
  echo "The MySQL/MariaDB container is not running. Starting it now..."
  docker-compose up -d db
fi

# Check the logs of the MySQL/MariaDB container for errors
if docker-compose logs db | grep -q "ERROR"; then
  echo "The MySQL/MariaDB container has errors. Please check the logs and fix the issue."
  exit 1
fi

# Verify that the MySQL/MariaDB server is configured correctly
if ! docker-compose exec db mysql -h db -u root -proot -e "SHOW DATABASES;" >/dev/null 2>&1; then
  echo "Unable to connect to the MySQL/MariaDB server. Please check the configuration and try again."
  exit 1
fi

# Restart the MySQL/MariaDB service
if ! docker-compose restart db >/dev/null 2>&1; then
  echo "Unable to restart the MySQL/MariaDB service. Please check the logs and fix the issue."
  exit 1
fi

echo "MySQL/MariaDB server is running correctly. WordPress is available at http://localhost:8000/"
