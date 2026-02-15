#!/bin/bash
# Removes the macOS quarantine flag from AgentKan so it can be opened.
# Usage: curl -fsSL https://raw.githubusercontent.com/tencubed/agentkan-release/main/fix-gatekeeper.sh | bash

APP_NAME="AgentKan.app"

echo "Searching for $APP_NAME..."

APP_PATH=$(mdfind "kMDItemFSName == '$APP_NAME' && kMDItemContentType == 'com.apple.application-bundle'" | head -1)

if [ -z "$APP_PATH" ]; then
    echo "Could not find $APP_NAME on this Mac."
    echo "Make sure you've installed it first (drag to Applications from the DMG)."
    exit 1
fi

echo "Found: $APP_PATH"
echo "Removing quarantine flag..."

xattr -cr "$APP_PATH"

echo "Done! You can now open AgentKan normally."
