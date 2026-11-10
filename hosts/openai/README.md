# OpenAI host paths: ChatGPT Work Dot and Codex

Project Bot is one shared role design with separate host-native execution paths. The repository is not a Codex-only product.

## ChatGPT Work

Use the operator's existing Probot Dot as the user-facing Project Bot. A Dot is personal to its owner; this repository does not install or publish it. Connect or enable the Project Bot plugin in the Dot's ChatGPT environment to provide its role skills and the o-MATIC Server MCP connection.

ChatGPT Work Dots can delegate tasks to hosted background agents. For a specialist task, Probot should give the child a bounded objective, relevant project context, permitted tools, and a requested evidence report. The parent must inspect the returned work and verify the final result. A role file or skill describes expertise; it does not prove that a child agent ran or inherited Server tools, authentication, or knowledge.

For an L2 workflow, check the live Dot/Work activity for distinct child runs, confirm the actual tool surface and Server identity used, and report what was verified. If the host does not expose a needed delegation or tool capability in the current run, state that limit and complete only the work available.

## Codex

Install the OpenAI plugin for shared skills and the Server MCP connection. Codex custom agents are a separate native host projection in `.codex/agents/`; installing the plugin does not create those agent profiles. Use the repository's profiles and confirm their availability in the active Codex project.

## Optional Workspace Agent alternative

A separately built Workspace Agent may be useful when the organization needs a directory-listed agent with centrally configured tools and access. It is optional and distinct from the personal Dot path. See [`../chatgpt-workspace-agent/BUILD.md`](../chatgpt-workspace-agent/BUILD.md). Do not treat attaching specialist skills to that agent as proof of subagent execution.

## Server connection

Use the configured o-MATIC Server MCP endpoint and the host's supported user authentication. Cloud default: `https://factory.o-matic.ai/mcp`. For on-premises installations, set the operator's reachable HTTPS MCP URL. The Server's authenticated identity and live grants govern access; the role definition grants nothing.

## Directory and marketplace status

The GitHub repository is the shared source and host-adapter catalog. Installing a plugin, creating a Dot, creating a Workspace Agent, and publishing to a marketplace or organization directory are separate actions.