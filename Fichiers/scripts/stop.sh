#!/bin/bash

chmod +x "$0"

# Chemin du dump
DUMP_PATH="./Fichiers/Dockerfiles/mysql/wp-dump.sql"

# Déterminer le système d'exploitation
OS=$(uname)

# # Mettre à jour le chemin relatif pour Windows
# if [[ "$OS" == *"MINGW"* ]] || [[ "$OS" == *"MSYS"* ]]; then
#     DUMP_PATH="./Fichiers/Dockerfiles/mysql/wp-dump.sql"
# fi

# Fonction pour effectuer le dump de la base de données
perform_dump() {
    # Créer le fichier de dump vide
    touch "$DUMP_PATH"

    # Exporter le dump de la base de données dans le fichier
    docker-compose exec mysql mysqldump -u root -prootpress wordpress > "$DUMP_PATH"

    # Vérifier si le dump a été créé avec succès
    if [ -f "$DUMP_PATH" ]; then
        echo "Le dump de la base de données a été créé avec succès."
    else
        echo "Une erreur s'est produite lors de la création du dump de la base de données."
        exit 1
    fi
}

# Fonction pour supprimer les conteneurs et les volumes
perform_cleanup() {
    # Supprimer les anciens conteneurs
    docker-compose down --volumes --remove-orphans

    # Nettoyer les images et les volumes
    docker system prune -a --volumes --force

    echo "Suppression des conteneurs et des volumes terminée."
}

# Demander à l'utilisateur ce qu'il souhaite faire
echo "Que souhaitez-vous faire ?"
echo "1. Effectuer un dump seulement"
echo "2. Supprimer les conteneurs et les volumes seulement"
echo "3. Effectuer un dump et supprimer les conteneurs et les volumes"
read -p "Veuillez choisir une option (1, 2 ou 3) : " choice

case $choice in
    1)
        perform_dump
        ;;
    2)
        perform_cleanup
        ;;
    3)
        perform_dump
        perform_cleanup
        ;;
    *)
        echo "Option invalide. Veuillez choisir une option valide (1, 2 ou 3)."
        ;;
esac

echo "Arrêt du projet et nettoyage terminés. Adios amigo !"
