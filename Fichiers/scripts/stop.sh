#!/bin/bash

# Comme ca pas besoin de faire chmod +x stop.sh <3
chmod +x "$0"

# Arrête les conteneurs et supprime les volumes
docker-compose down --volumes

# Montre les conteneurs pour vérifier qu'ils sont bien supprimés
docker ps

