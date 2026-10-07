#!/bin/sh
# Starts the Playwright MCP server (wired up in .mcp.json).
# Locally it drives your installed Google Chrome. Claude Code cloud sessions
# have no Chrome and no display and run as root, so there it falls back to the
# preinstalled Chromium, headless and without the Chromium sandbox.
set -eu

chromium="${PLAYWRIGHT_BROWSERS_PATH:-/opt/pw-browsers}/chromium"
if [ -x "$chromium" ] && [ ! -x /opt/google/chrome/chrome ]; then
  exec npx -y @playwright/mcp@latest --headless --no-sandbox --isolated \
    --executable-path "$chromium" "$@"
fi

exec npx -y @playwright/mcp@latest "$@"
