# o-MATIC Project Bot (Probot)

Project Bot is the o-MATIC name for Probot: one reusable, operator-facing agent identity across Foundry, LucidIT, Practically Adventist, and other project contexts. Start the same agent inside the intended host Project/workspace or name the project in the request. Project Bot selects that project's live authorized o-MATIC Server factory context; it does not need a separate copy for each project. A Factory Agent is configured for a task and outcome, with an accountable lead and reusable specialist cast. Brandy leads the distinct Brand Bot composition when the outcome is brand-led. Project Bot owns requests from intake through verified close and routes material specialist work to Fred, Data, Carver, Brandy, and Monet.

The package is public because the Server remains the control plane. It contains host-facing role definitions and setup adapters; it contains no credentials, factory data, or private governance playbook. Installing these files does not grant access to o-MATIC Server.

## One product, host-native agents

The canonical role design is shared. Each host gets its own packaging, connector setup, identity flow, and runtime behavior. A specialist is a real subagent only where the host provides a supported agent/child-agent mechanism and the handoff is configured and tested. Skills or instructions alone are not proof of a running subagent.

| Host | Included projection | Delegation status |
|---|---|---|
| Codex / ChatGPT | OpenAI plugin package with skills and Server MCP configuration; Codex-native project subagents included | Codex agent files are project scoped and are not installed by the ChatGPT/Codex plugin alone. Verify actual handoffs and Server grants. |
| Cursor | Cursor Plugin with agent definitions, skills, and MCP configuration | Native agent definitions are included; test Project/Agent handoff and separately bind each MCP principal. |
| Claude Code / Cowork | Claude plugin with agents, skills, and MCP configuration | Claude Code and Cowork support plugin agent components; test each surface. General Claude chat does not imply agent handoffs. |
| Grok Build | Claude-compatible plugin plus portable skills and AGENTS.md | Grok Build documents plugin and subagent support. Confirm live handoffs in the installed version. |
| Copilot Studio | Copy/paste setup kit for Project Bot and five child agents | Build one Project Bot parent and one reusable specialist graph. Select Foundry, LucidIT, or another project through its live Server context; do not create one Probot per project. |

Each host has its own plugin format and official directory. This repository already includes GitHub-hosted marketplace catalogs for Claude Code and Cursor; follow the steps below to add them. Those catalogs are not the same as approval in Anthropic's or Cursor's curated public directories.

## Connect to o-MATIC Server

Default cloud endpoint: `https://factory.o-matic.ai/mcp`.

On-premise: replace the endpoint with the operator's reachable o-MATIC Server MCP URL. The package never collects or stores passwords. Complete the host's supported OAuth/SSO flow; the Server's authenticated identity and live grants determine access. A configured URL or successful sign-in alone does not prove tool access.

Install the Server connector on Project Bot. Install it on a specialist only when that specialist needs direct Server tools. Do not assume child agents inherit MCP tools, OAuth, knowledge, or permissions from the parent.

## Project contexts

Project Bot is created once. Starting it in a host Project/workspace or naming a project selects which task context to use. Before using project data, resolve the exact Server connection from current grants and run a fresh startup. A project switch does not create a second Project Bot, and it must not mix data or state between Server factories. See [the project-context selection procedure](docs/project-context-selection.md), including the fresh Foundry/LucidIT test.

## Factory compositions

See [`compositions/`](compositions/) for project-context templates and the distinct Brandy-led Brand Bot composition. Foundry and LucidIT use the same Project Bot identity; the active Server factory selected at startup controls each project's data, grants, and durable state.

## Roles

- **Project Bot / Probot** — accountable factory coordinator; plans, routes, starts, verifies, and closes.
- **Fred** — document extraction, chunking, source context, custody, and requested source-linked summaries; asks before indexing or changing a corpus.
- **Data** — PostgreSQL/pgvector and hybrid retrieval engineering, query plans, indexes, model compatibility, and retrieval quality.
- **Carver** — software and web implementation, from agreed specification through relevant checks, diff inspection, and evidence-backed delivery.
- **Brandy** — brand-led marketing, positioning, messaging, campaigns, market and channel strategy.
- **Monet** — modern visual design, typography, layout, design systems, and media-rich art direction.

Smith is not included in this core bundle. The Foundry record keeps Smith opt-in and advisory. Jo and Jake remain separate single-specialist directions, not part of these multi-agent compositions.

## Install from this repository

### Claude Code marketplace

Add this public GitHub repository as a marketplace, then install Project Bot:

```sh
claude plugin marketplace add LucidIT-LLC/o-matic-project-bot
claude plugin install omatic-project-bot@o-matic-project-bot-marketplace
```

### Cursor marketplace

In Cursor, open **Customize → Plugins → Browse Marketplace → Add Marketplace → Import from GitHub**, then enter `https://github.com/LucidIT-LLC/o-matic-project-bot`. Install `omatic-project-bot` at user or project scope. A team admin can import the same repository under **Dashboard → Plugins & MCPs → Team Marketplaces**.

### Other hosts

For Copilot Studio, follow [`hosts/copilot-studio/BUILD.md`](hosts/copilot-studio/BUILD.md) to create the agent and connected specialists manually. For ChatGPT/Codex, package the OpenAI plugin folder and upload it through the plugin UI; submission to OpenAI's public directory is a separate reviewed step.

These GitHub-hosted catalogs make the plugin installable directly from this repository. Anthropic's public directory requires a paid Claude account and a separate portal submission. Cursor's curated public Marketplace also requires a submission and review; Cursor requires public marketplace plugins to be open source. This repo currently reserves all rights, so it is not being submitted to Cursor's public directory under the current license.

## Security and capability truth

Prompts describe roles; they do not grant permissions. The live Server grants and host controls govern every action. Pause for destructive, production-impacting, or otherwise consequential choices. Report startup checks separately, state what was actually verified, and never claim a handoff or a Server capability that the current host cannot expose.

Public source is copyright LucidIT. No rights to the private Server, factory data, credentials, or protected internal operating material are conveyed by this repository. Marketplace submission, SSO onboarding, on-prem configuration, and host runtime acceptance remain separate work items.

## Source decisions

This package projects Foundry decisions 862–869. Decision 867 defines the reusable cast and factory-specific lead model; Decision 868 names GitHub as the canonical public source tree; Decision 869 confirms one Project Bot across project contexts, with separate Server-backed project state and grants. Foundry's database remains authoritative for decisions, private governance, live factory identity, and access. Reconcile this projection against those records before each release.
