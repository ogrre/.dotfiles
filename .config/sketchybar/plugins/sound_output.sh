#!/usr/bin/env sh

# Définir les valeurs possibles pour les écouteurs et les casques
HEADPHONES=("AirPods Max" "Bose Headphone")
EARBUDS=("AirPods" "Bose Earbuds")

response=$(system_profiler SPAudioDataType)

counter=0

while IFS= read -r line; do
    ((counter++))

    if [[ "$line" == *"Default System Output Device: Yes"* ]]; then
        output_device=$(sed -n "$((counter - 3))p" <<< "$response")
        output_device=$(sed 's/^[[:space:]]*//' <<< "$output_device")
        output_device=$(sed 's/[:[:space:]]*$//' <<< "$output_device")

        # Vérifier si l'output device correspond à l'un des casques
        for headphone in "${HEADPHONES[@]}"; do
            if echo "$output_device" | grep -qi "$headphone"; then
                icon=
                sketchybar --set $NAME label="$output_device" icon="$icon"
                exit 0
            fi
        done

        # Vérifier si l'output device correspond à l'un des écouteurs
        for earbud in "${EARBUDS[@]}"; do
            if echo "$output_device" | grep -qi "$earbud"; then
                icon=󱡒
                sketchybar --set $NAME label="$output_device" icon="$icon"
                exit 0
            fi
        done

	if [ -z "$label" ]; then
            icon=󰓃
            label="$output_device"
        fi

        break
    fi
done <<< "$response"

# Afficher l'output device et son icône dans SketchyBar
sketchybar --set $NAME label="$label" icon="$icon"

