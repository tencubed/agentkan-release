# AgentKan

A visual KanBan board for managing Claude Code agents.

## Installation

### macOS

1. Download the latest `.dmg` file from [Releases](https://github.com/tencubed/agentkan-release/releases/latest)
2. Open the `.dmg` and drag **AgentKan** to your **Applications** folder
3. Before opening the app for the first time, you need to remove the macOS quarantine flag (the app is not code-signed):
   - Download [`fix-macos-gatekeeper.command`](https://github.com/tencubed/agentkan-release/raw/main/fix-macos-gatekeeper.command) from this repo
   - Double-click it — it will find AgentKan on your Mac and remove the quarantine flag
   - You only need to do this once
4. Open **AgentKan** from your Applications folder

**Alternative (manual):** If you prefer not to use the script, open Terminal and run:

```bash
xattr -cr /Applications/AgentKan.app
```

### Requirements

- macOS 12+ (Monterey or later)
- Apple Silicon (arm64)
