#!/bin/bash

recto="$1"
verso="$2"

if [[ ! -f "$recto" || ! -f "$verso" ]]; then
  echo "Erreur : Veuillez fournir deux fichiers PDF valides."
  exit 1
fi

# Créer un dossier temporaire
temp_dir=$(mktemp -d)

# Compter le nombre de pages
pages=$(pdftk "$recto" dump_data | grep NumberOfPages | awk '{print $2}')

# Créer la liste des fichiers à combiner
args=()
for ((i=1; i<=pages; i++)); do
  pdftk "$recto" cat $i output "$temp_dir/recto_$i.pdf"
  pdftk "$verso" cat $i output "$temp_dir/verso_$i.pdf"
  args+=("$temp_dir/recto_$i.pdf")
  args+=("$temp_dir/verso_$i.pdf")
done

# Fusionner
output_dir=$(dirname "$recto")
output_file="$output_dir/Intercale.pdf"
pdftk "${args[@]}" cat output "$output_file"

# Nettoyer
rm -r "$temp_dir"

# Ouvrir le fichier
open "$output_file"
