#!/bin/bash

# uninstall.sh - Désinstalle recto-verso-pdf

set -e

TARGET="/usr/local/bin/recto-verso"

# Vérifier que l'utilisateur a les droits sudo
if [[ $EUID -ne 0 ]]; then
   echo "Ce script doit être exécuté avec sudo."
   exit 1
fi

# Vérifier que le fichier cible existe
if [[ -f "$TARGET" ]]; then
    rm "$TARGET"
    echo "recto-verso désinstallé avec succès."
else
    echo "recto-verso n'est pas installé (aucun fichier trouvé à $TARGET)."
fi
