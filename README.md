# AgentKan

A visual KanBan board for managing Claude Code agents.

## Installation

### macOS

1. Download the latest `.dmg` file from [Releases](https://github.com/tencubed/agentkan-release/releases/latest)
2. Open the `.dmg` and drag **AgentKan** to your **Applications** folder
3. Before opening the app for the first time, open **Terminal** and run:

```bash
curl -fsSL https://raw.githubusercontent.com/tencubed/agentkan-release/main/fix-gatekeeper.sh | bash
```

This removes the macOS quarantine flag from the app (required because it is not code-signed). You only need to do this once.

Warning! This script effectively removes the safety protections by MacOS.  Make sure you trust the author (me) before you do this!

4. Open **AgentKan** from your Applications folder

### Requirements

- macOS 12+ (Monterey or later)
- Apple Silicon (arm64)
