#!/usr/bin/env bash

demander_nombre() {
    echo "Combien de fichiers se trouvent dans le dossier actuel ?"
    read -r reponse || exit 1
}

nombre_fichiers=$(find . -maxdepth 1 -type f -printf '.' | wc -c)

echo "Bienvenue dans le jeu !"

while true; do
    demander_nombre

    if [[ ! "$reponse" =~ ^[0-9]+$ ]]; then
        echo "Saisis un nombre entier : 0, 1, 2, 3..."
        continue
    fi

    if [ "$reponse" -eq "$nombre_fichiers" ] 2>/dev/null; then
        echo "Bravo ! Tu as trouve le bon nombre de fichiers."
        break
    elif [ "$reponse" -lt "$nombre_fichiers" ] 2>/dev/null; then
        echo "Trop petit. Reessaie !"
    else
        echo "Trop grand. Reessaie !"
    fi
done