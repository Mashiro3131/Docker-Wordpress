#!/bin/bash

chmod +x "$0"
docker build -t mysql-server ./Fichiers/Dockerfiles/mysql
docker build -t wordpress-server ./Fichiers/Dockerfiles/wordpress

