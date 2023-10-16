#!/bin/bash

# Vérifier si l'argument est "Hello"
if [ "$1" = "Hello" ]; then
  echo "Bonjour, je suis un script !"
# Vérifier si l'argument est "Bye"
elif [ "$1" = "Bye" ]; then
  echo "Au revoir et bonne journée !"
# Si l'argument n'est ni "Hello" ni "Bye", afficher un message d'erreur
else
  echo "Usage: $0 [Hello|Bye]"
  exit 1
fi
