#!/bin/bash
# Double-click this file to allow AgentKan to run on macOS without code signing.

APP_NAME="AgentKan.app"

echo "Searching for $APP_NAME..."

APP_PATH=$(mdfind "kMDItemFSName == '$APP_NAME' && kMDItemContentType == 'com.apple.application-bundle'" | head -1)

if [ -z "$APP_PATH" ]; then
    echo "Could not find $APP_NAME on this Mac."
    echo "Press any key to exit."
    read -n 1
    exit 1
fi

echo "Found: $APP_PATH"
echo "Removing quarantine flag..."

xattr -cr "$APP_PATH"

echo ""
echo "Done! You can now open AgentKan normally."
echo "Press any key to exit."
read -n 1
