#!/bin/bash
# Removes the macOS quarantine flag from AgentKan so it can be opened.
# Usage: curl -fsSL https://raw.githubusercontent.com/tencubed/agentkan-release/main/fix-gatekeeper.sh | bash

APP_NAME="AgentKan.app"

echo "Searching for $APP_NAME in Applications..."

# Check /Applications first, then ~/Applications
if [ -d "/Applications/$APP_NAME" ]; then
    APP_PATH="/Applications/$APP_NAME"
elif [ -d "$HOME/Applications/$APP_NAME" ]; then
    APP_PATH="$HOME/Applications/$APP_NAME"
else
    echo "Could not find $APP_NAME in /Applications or ~/Applications."
    echo "Make sure you've installed it first (drag to Applications from the DMG)."
    exit 1
fi

echo "Found: $APP_PATH"
echo "Removing quarantine flag..."

# Use find to skip broken symlinks (e.g. inside node_modules)
find "$APP_PATH" -not -type l -exec xattr -c {} + 2>/dev/null

echo "Done! You can now open AgentKan normally."
