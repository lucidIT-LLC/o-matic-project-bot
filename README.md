# o-MATIC Project Bot (Probot)

Project Bot is the o-MATIC name for Probot, the operator-facing lead for the Foundry factory agent. A Factory Agent is configured for a task and outcome; it selects a lead and assembles a reusable specialist cast. Probot can lead Foundry and a customer-delivery factory; Brandy can lead Brand Factory with the same specialists beside her. It owns a request from intake through a verified close, and routes specialist work to Fred, Data, Carver, Brandy, and Monet when their expertise materially improves the result.

The package is public because the Server remains the control plane. It contains host-facing role definitions and setup adapters; it contains no credentials, factory data, or private governance playbook. Installing these files does not grant access to o-MATIC Server.

## One product, host-native agents

The canonical role design is shared. Each host gets its own packaging, connector setup, identity flow, and runtime behavior. A specialist is a real subagent only where the host provides a supported agent/child-agent mechanism and the handoff is configured and tested. Skills or instructions alone are not proof of a running subagent.

| Host | Included projection | Delegation status |
|---|---|---|
| Codex / ChatGPT | OpenAI plugin package with skills and Server MCP configuration; Codex-native project subagents included | Codex agent files are project scoped and are not installed by the ChatGPT/Codex plugin alone. Verify actual handoffs and Server grants. |
| Cursor | Cursor Plugin with agent definitions, skills, and MCP configuration | Native agent definitions are included; test Project/Agent handoff and separately bind each MCP principal. |
| Claude Code / Cowork | Claude plugin with agents, skills, and MCP configuration | Claude Code and Cowork support plugin agent components; test each surface. General Claude chat does not imply agent handoffs. |
| Grok Build | Claude-compatible plugin plus portable skills and AGENTS.md | Grok Build documents plugin and subagent support. Confirm live handoffs in the installed version. |
| Copilot Studio | Copy/paste setup kit for Project Bot and five child agents | Create agents and connected-agent relationships in Studio; Agent Builder text alone cannot establish the graph. Add the Server MCP tool and SSO to the parent and each child that calls it. |

This is not one marketplace listing for every host. OpenAI, Cursor, Claude, Grok, and Microsoft each have their own distribution and approval route. The repository is the shared source package.

## Connect to o-MATIC Server

Default cloud endpoint: `https://factory.o-matic.ai/mcp`.

On-premise: replace the endpoint with the operator's reachable o-MATIC Server MCP URL. The package never collects or stores passwords. Complete the host's supported OAuth/SSO flow; the Server's authenticated identity and live grants determine access. A configured URL or successful sign-in alone does not prove tool access.

Install the Server connector on Project Bot. Install it on a specialist only when that specialist needs direct Server tools. Do not assume child agents inherit MCP tools, OAuth, knowledge, or permissions from the parent.

## Factory compositions

See [`compositions/`](compositions/) for Foundry, customer-delivery, and Brand Factory examples. These define different outcomes and leads while reusing the canonical cast. The active Server factory selected at startup controls data and grants.

## Roles

- **Project Bot / Probot** — accountable factory coordinator; plans, routes, starts, verifies, and closes.
- **Fred** — document extraction, chunking, source context, custody, and requested source-linked summaries; asks before indexing or changing a corpus.
- **Data** — PostgreSQL/pgvector and hybrid retrieval engineering, query plans, indexes, model compatibility, and retrieval quality.
- **Carver** — software and web implementation, from agreed specification through relevant checks, diff inspection, and evidence-backed delivery.
- **Brandy** — brand-led marketing, positioning, messaging, campaigns, market and channel strategy.
- **Monet** — modern visual design, typography, layout, design systems, and media-rich art direction.

Smith is not included in this core bundle. The Foundry record keeps Smith opt-in and advisory. Jo and Jake remain separate single-specialist directions, not part of these multi-agent compositions.

## Install

Choose the host adapter under [`hosts/`](hosts/). For Copilot Studio, follow [`hosts/copilot-studio/BUILD.md`](hosts/copilot-studio/BUILD.md). For Cursor or Claude Code, install the corresponding plugin package. For Codex, add the OpenAI plugin and connect the Server endpoint; use the host's own agent orchestration configuration for specialist handoffs.

## Security and capability truth

Prompts describe roles; they do not grant permissions. The live Server grants and host controls govern every action. Pause for destructive, production-impacting, or otherwise consequential choices. Report startup checks separately, state what was actually verified, and never claim a handoff or a Server capability that the current host cannot expose.

Public source is copyright LucidIT. No rights to the private Server, factory data, credentials, or protected internal operating material are conveyed by this repository. Marketplace submission, SSO onboarding, on-prem configuration, and host runtime acceptance remain separate work items.

## Source decisions

This package projects Foundry decisions 862–868. Decision 867 defines a Factory Agent as the task-specific composition and clarifies that Probot and o-MATIC Project Bot are one role. Decision 868 makes this GitHub repository the canonical public source tree; Foundry’s database remains authoritative for decisions, private governance, live factory identity, and grants. Reconcile this projection against those records before each release.
