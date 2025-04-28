#!/bin/bash

# install.sh - Installation script for recto-verso-pdf (version avec copie)

set -e

TARGET="/usr/local/bin/recto-verso"

# Vérifier que l'utilisateur a les droits sudo
if [[ $EUID -ne 0 ]]; then
   echo "Ce script doit être exécuté avec sudo."
   exit 1
fi

# Vérifier que le fichier recto-verso.sh existe
if [[ ! -f recto-verso.sh ]]; then
    echo "Erreur : recto-verso.sh introuvable dans le répertoire actuel."
    exit 1
fi

# Rendre le script exécutable
chmod +x recto-verso.sh

# Copier le script dans /usr/local/bin
cp recto-verso.sh "$TARGET"

echo "Installation terminée ! Vous pouvez utiliser 'recto-verso' depuis n'importe où."
