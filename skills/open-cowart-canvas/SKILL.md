---
name: open-cowart-canvas
description: Open the Cowart local web service, a tldraw-powered infinite canvas, in the Codex in-app browser. Use when the user asks to open, launch, view, or work in the Cowart canvas or wants an infinite canvas inside Codex.
---

# Open Cowart Canvas

## Workflow

1. Start the local Cowart web service with the user's current Codex project directory, and keep the process running:

```bash
/Users/bytedance/plugins/cowart/scripts/start-canvas.sh /path/to/user/codex-project
```

Use the active workspace or project directory from the current Codex session for `/path/to/user/codex-project`. Do not pass the Cowart plugin directory.

2. Open the resulting local URL in the Codex in-app browser.

The default URL is `http://127.0.0.1:43217/`. If the service output prints a different `Local:` URL, open that actual URL instead. If browser control is unavailable, give the user the local URL.

## Constraints

Do not inspect canvas files, call canvas APIs, run builds, check storage layout, take screenshots, or perform other validation steps unless opening the canvas fails or the user explicitly asks for those checks.
