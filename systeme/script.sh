#!/bin/bash

# Demande l'emplacement où enregistrer le projet
echo "Où voulez-vous enregistrer le projet ? (Chemin absolu ex : c:dossier)"
read directory

# Demande le nom du projet
echo "Quel est le nom de votre projet ?"
read project

# Se déplacer dans le dossier racine
cd "$directory" || { echo "Le dossier $directory n'existe pas."; exit 1; }

# Créer le dossier du projet
mkdir "$project" || { echo "Échec de la création du dossier $project."; exit 1; }

# Se déplacer dans le dossier du projet
cd "$project" || { echo "Échec de l'accès au dossier $project."; exit 1; }

# Créer les fichiers dans le dossier du projet
touch index.html style.css readme.md

# Afficher la confirmation que le projet a été ajouté
echo "Le projet '$project' a été ajouté dans $directory."
