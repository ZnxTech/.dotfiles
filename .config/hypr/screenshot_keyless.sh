#!/bin/bash

#############################################
# ZnxTech's grim screenshot script for s-ul #
# ----------------------------------------- #
# (C) 2024 GNU-GPLv3                        #
#############################################

# API key
KEY="KEY GOES HERE"

# Add some auto naming code here lol, "screenshot" for now.
NAME="screenshot"

# Take screenshot and store to screenshot.png (temp).
grim -c -g "$(slurp)" ./"$NAME".png

# Post to s-ul, get image link and auto-copy to clipboard.
curl -s -X POST -F "file=@"$NAME".png" "https://s-ul.eu/api/v1/upload?key="$KEY"&wizard=true" | jq -r '.url' | tr -d '\n' | wl-copy

# Delete image after upload.
rm ./"$NAME".png