#!/bin/bash

# Build the MySQL image with a specific name
# docker build -t mysql-server -f Fichiers/Dockerfiles/mysql/Dockerfile.mysql .
docker build --pull --rm -f "Fichiers\Dockerfiles\mysql\Dockerfile.mysql" -t test.mysql "Fichiers\Dockerfiles\mysql"

# Show all images
docker images --all

# Exit the script
exit 0
