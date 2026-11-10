# Claude Code marketplace

The repository root contains a Claude Code marketplace catalog pointing to this plugin. Install it directly from GitHub:

```sh
claude plugin marketplace add LucidIT-LLC/o-matic-project-bot
claude plugin install o-matic-project-bot@o-matic-project-bot-marketplace
```

The Project Bot artwork is included at `assets/logo.png`. Claude Code's current plugin and marketplace schema provides a display name but no marketplace icon field, so the image is available to hosts that expose avatar upload without adding an unsupported manifest property.

This is LucidIT's GitHub-hosted marketplace. Anthropic's public directory is a separate, reviewed listing that requires submission through its developer portal.

The plugin contains reusable specialist definitions and a Server MCP connector. Validate Cowork and Claude Code separately. Agent components are not assumed available in general Claude chat. Connector setup and OAuth/SSO sign-in remain separate from plugin installation.
