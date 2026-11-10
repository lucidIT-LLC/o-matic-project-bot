# Host capability matrix (research snapshot: 2026-11-10)

One role source and several Factory Agent compositions do not create a universal runtime. This matrix distinguishes package schema from verified behavior. None of these handoffs or sign-in paths has yet been exercised with this bundle.

| Host | Included projection | Specialist support and inheritance | Server setup | State |
|---|---|---|---|---|
| Codex / ChatGPT | OpenAI plugin with skills/MCP; Codex project agents | Codex custom subagents are project-scoped and inherit parent permissions, provider, and MCP servers. ChatGPT plugin installation is not subagent deployment. | Remote MCP; complete user OAuth/SSO and verify active factory grants. | Files prepared; runtime/SSO untested. |
| Cursor | Cursor Plugin with lead/specialist agents, skills, and MCP | Native agent components are included; prove actual lead-to-child handoff in the active Cursor surface. | MCP is configured for the parent; bind/verify every principal the runtime exposes. | Files prepared; handoff/bindings untested. |
| Claude Code / Cowork | Claude plugin with agents, skills, and MCP | Agent components are available only on supported surfaces; test Code and Cowork separately. | Connector setup and sign-in are separate from installing the plugin. | Files prepared; per-surface tests unrun. |
| Grok Build | Claude-compatible plugin, skills, MCP, AGENTS.md | Grok Build documents plugins and subagents and reads Claude plugin structures; validate behavior in the installed release. | Confirm OAuth support and Server endpoint reachability from runtime. | Projection prepared; handoff/auth untested. |
| Copilot Studio | Manual build kit for parent and connected children | Build factory-specific parent and child graph in Studio. Generative orchestration and descriptions are required for routed connected agents. | Add MCP to every agent needing Server tools; configure user sign-in per supported agent connection. | Copy/paste instructions only; graph not deployed. |

A different topic/folder alone is not a new factory. Use separate Server-backed factory contexts when outcome, customer boundary, corpus, policy, durable state, or grants require separation. Projects/workspaces are host context.

Marketplace directories are separate. The GitHub repository is not a universal one-click listing. Follow `RELEASE-CHECKLIST.md` before submission.
