#!/usr/bin/env zsh

# Obtenez les informations sur les écrans avec system_profiler
DISPLAY_INFO=$(system_profiler SPDisplaysDataType)

# Parcours chaque écran trouvé
while IFS= read -r line; do
    # Recherchez la ligne contenant la résolution de l'écran
    if [[ "$line" == *": Resolution:"* ]]; then
        # Extrait la résolution de l'écran
        RESOLUTION=$(echo "$line" | cut -d':' -f2 | xargs)
        
        # Vous pouvez ajouter ici la logique pour ajuster la configuration de Yabai en fonction de la résolution de l'écran
        # Par exemple, vous pouvez définir une marge différente en fonction de la résolution
        
        echo "Écran avec résolution : $RESOLUTION"
    fi
done <<< "$DISPLAY_INFO"


