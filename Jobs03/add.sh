#! /bin/bash

# Vérifier s'il y a exactement deux arguments
if [ $# -ne 2 ]; then
echo  "Usage: $0 <nombre1> <nombre2>"
exit 1
fi

# Capturer les deux nombres passés en argument
nombre1=$1
nombre2=$2

#Effectuer l'addition
resultat=$(($nombre1 + $nombre2))

# Afficher le résultat
echo "Résultat de l'addition : $nombre1 + $nombre2 = $resultat"
