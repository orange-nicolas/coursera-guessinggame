README.md:
	touch README.md
	echo "# Jeu de devinette" > README.md
	echo "## Date de création du README :" >> README.md
	echo "$$(date -R)" >> README.md
	echo "## Nombre de lignes de code :" >> README.md
	wc -l < guessinggame.sh >> README.md