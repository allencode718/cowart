---
name: open-cowart-canvas
description: Open the Cowart local web service, a tldraw-powered infinite canvas, in the Codex in-app browser. Use when the user asks to open, launch, view, or work in the Cowart canvas or wants an infinite canvas inside Codex.
---

# Open Cowart Canvas

## Workflow

Start the local Cowart web service from the plugin root:

```bash
/Users/bytedance/plugins/cowart/scripts/start-canvas.sh
```

Keep that process running. It serves the tldraw infinite canvas at:

```text
http://127.0.0.1:43217
```

If `COWART_PORT` is set before starting the script, open that port instead:

```bash
COWART_PORT=43218 /Users/bytedance/plugins/cowart/scripts/start-canvas.sh
```

Then use the in-app browser to open the URL. If the browser-control skill is available, use it for the navigation. Otherwise, give the user the local URL.

## Notes

The canvas uses `tldraw` with `persistenceKey="cowart-canvas"`, so drawings persist in the browser's local storage for the same origin.
