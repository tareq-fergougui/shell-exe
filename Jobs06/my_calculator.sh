#!/bin/bash

# Vérifier s'il y a exactement trois arguments
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

# Capturer les trois arguments passés en ligne de commande
nombre1="$1"
operateur="$2"
nombre2="$3"

# Vérifier si les nombres sont des nombres valides
if ! [[ "$nombre1" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$nombre2" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Les deux premiers arguments doivent être des nombres."
  exit 1
fi

# Vérifier si l'opérateur est valide
if [[ "$operateur" != "+" && "$operateur" != "-" && "$operateur" != "x" && "$operateur" != "/" ]]; then
  echo "Opérateur invalide. Utilisez +, -, x, ou /."
  exit 1
fi

# Effectuer l'opération en fonction de l'opérateur
resultat=0
if [ "$operateur" = "+" ]; then
  resultat=$(echo "$nombre1 + $nombre2" | bc)
elif [ "$operateur" = "-" ]; then
  resultat=$(echo "$nombre1 - $nombre2" | bc)
elif [ "$operateur" = "x" ]; then
  resultat=$(echo "$nombre1 * $nombre2" | bc)
elif [ "$operateur" = "/" ]; then
  if [ "$nombre2" -eq 0 ]; then
    echo "Division par zéro impossible."
    exit 1
  fi
  resultat=$(echo "scale=2; $nombre1 / $nombre2" | bc)
fi

# Afficher le résultat
echo "Résultat de l'opération : $nombre1 $operateur $nombre2 = $resultat"
