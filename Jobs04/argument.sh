#!/bin/bash

# Vérifier s'il y a exactement deux arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <nouveau_fichier> <fichier_source>"
  exit 1
fi

# Capturer les noms des fichiers passés en argument
nouveau_fichier="$1"
fichier_source="$2"

# Vérifier si le fichier source existe
if [ ! -e "$fichier_source" ]; then
  echo "Le fichier source '$fichier_source' n'existe pas."
  exit 1
fi

# Copier le contenu du fichier source dans le nouveau fichier
cat "$fichier_source" > "$nouveau_fichier"

# Vérifier si la copie a réussi
if [ $? -eq 0 ]; then
  echo "Le contenu de '$fichier_source' a été copié dans '$nouveau_fichier'."
else
  echo "Une erreur est survenue lors de la copie."
fi
