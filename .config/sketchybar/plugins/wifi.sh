#!/usr/bin/env sh

CURRENT_WIFI="$(sudo wdutil info)"
SSID="$(echo "$CURRENT_WIFI" | sed -n 's/^ *SSID *: *\(.*\)/\1/p')"
CURR_TX=$(echo "$CURRENT_WIFI" | grep "Tx Rate" | sed 's/.*: //')

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME label="Disconnected" icon=󰖪
else
  sketchybar --set $NAME label="$SSID (${CURR_TX})" icon=󰖩
fi
