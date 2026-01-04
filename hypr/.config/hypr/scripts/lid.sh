#!/usr/bin/env sh

# Enable laptop screen when lid is open in any case
if [[ "$1" == "open" ]]; then
    hyprctl keyword monitor "eDP-1, preferred, auto, 1"
    exit 0
fi

# Checks if an external monitor is connected
if hyprctl monitors | grep -q 'DP-1'; then
    if [[ "$1" == "close" ]]; then
        # Disable laptop screen when lid is closed
        hyprctl keyword monitor "eDP-1, disable"
    fi
fi
