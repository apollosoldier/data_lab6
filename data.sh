#!/bin/bash
for j in {1..100}
do
  for i in {1..100} 
  do
    echo
    echo "Iteration #"${j}
    echo "NB_Thread : "${i}
    ./sort ${i} 2>>./saved/data${j}.txt #rediriger la seconde sortie standard vers le fichier de sauvegarde. Cause : la sortie de "sort" n'est pas stdout mais stderr
  done
done 
