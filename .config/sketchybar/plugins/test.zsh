# Exécuter la commande et stocker la réponse dans une variable
reponse=$(system_profiler SPAudioDataType)

# Initialiser un compteur pour suivre le nombre de lignes parcourues
compteur=0

# Parcourir chaque ligne de la réponse
while IFS= read -r default_system_output; do
	# Incrémenter le compteur à chaque ligne
	((compteur++))

    # Vérifier si la ligne contient "Default System Output Device: Yes"
    if [[ "$default_system_output" == *"Default System Output Device: Yes"* ]]; then
	    # Récupérer et afficher la ligne spécifique 3 lignes au-dessus
	    OUTPUT=$(sed -n "$((compteur - 3))p" <<< "$reponse")
	    echo "$OUTPUT"
	    # Vérifier les mots contenus dans la ligne spécifique
	    if [[ "$OUTPUT" == *"Airpods Max"* ]]; then
		    # Afficher une icône de casque
			ICON=􀺹
	    elif [[ "$OUTOUT" == *"Airpods"* ]]; then
		    # Afficher une icône d'écouteurs
		    ICON=􀟥
	    else
		    # Afficher une icône de son normale
		    ICON=🔊
	    fi

	    break
    fi
done <<< "$reponse"

echo $OUTPUT $ICON

