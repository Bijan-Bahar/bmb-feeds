# Claude Code setup

Project-scoped skills, subagents and MCP servers for building professional, distinctive websites.
Claude Code picks these up automatically when it runs in this repo.

## Skills (`.claude/skills/`)

Vendored from upstream; each folder keeps its upstream license.

| Source | Skills | License |
| --- | --- | --- |
| [emilkowalski/skills](https://github.com/emilkowalski/skills) @ `e8a175d` | `emil-design-eng`, `animate`, `review-animations`, `improve-animations`, `find-animation-opportunities`, `animation-vocabulary`, `apple-design`, `pick-ui-library`, `prototype`, `mobile-native`, `break-ui` | MIT |
| [pbakaus/impeccable](https://github.com/pbakaus/impeccable) @ `bbcb29d` (v4.5.0) | `impeccable` (+ the four `impeccable-*` subagents in `.claude/agents/`) | Apache-2.0 |
| [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) @ `b482f7a` | `design-taste-frontend`, `redesign-existing-projects`, `high-end-visual-design`, `minimalist-ui`, `industrial-brutalist-ui`, `full-output-enforcement` | MIT |
| [anthropics/skills](https://github.com/anthropics/skills) @ `683bc88` | `frontend-design` | Apache-2.0 |
| [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) @ `063bee9` | `web-design-guidelines` | MIT |

Left out on purpose: Emil's `write-swift`, `animate-expo`, `ask-sonner` (native/Swift/Sonner-only), and Taste's
`gpt-taste`, `design-taste-frontend-v1`, `stitch-design-taste` and the image-generation skills.

Impeccable's launcher (`impeccable/scripts/impeccable`) downloads its engine binary from the project's GitHub
releases into `~/.impeccable/` on first use. Its optional edit/stop hooks are **not** installed, so automated
runs in this repo are unaffected; run `npx impeccable install --providers=claude --scope=project` to add them.

To update a vendored skill, re-copy its folder from the upstream repo and bump the commit in the table above.

## MCP servers (`.mcp.json`)

- **figma** — Figma's hosted MCP server (`https://mcp.figma.com/mcp`). Authenticate once via `/mcp` in a local
  Claude Code session. For claude.ai / cloud sessions, connect Figma at https://claude.ai/customize/connectors.
- **playwright** — `@playwright/mcp` via `.claude/playwright-mcp.sh`: uses your Chrome locally, and the
  preinstalled headless Chromium in Claude Code cloud sessions.

Both are pre-approved in `.claude/settings.json`.
