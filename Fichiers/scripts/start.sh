#!/bin/bash

chmod +x "$0"

# docker-compose up -d mengisen-projetdocker-mysql-server

docker-compose up -d --build
echo
docker-compose ps
echo
docker images --all