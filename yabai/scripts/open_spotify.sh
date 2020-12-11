#!/bin/zsh

# Detects if iTerm2 is running
 if ! pgrep -f "Spotify" > /dev/null; then
     open -a "/Applications/Spotify.app"
 else
     # Create a new window
     if ! osascript -e 'tell application "Spotify" to create window with default profile' > /dev/null; then
         # Get pids for any app with "iTerm" and kill
         for i in $(pgrep -f "Spotify"); do kill -15 "$i"; done
         open  -a "/Applications/Spotify.app"
     fi
 fi
