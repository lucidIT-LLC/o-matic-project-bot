# Host capability matrix (research snapshot: 2026-11-10)

One reusable Project Bot identity serves several project contexts; Brandy's Brand Bot is a distinct lead composition. This matrix distinguishes package schema from verified host behavior. Server startup across Foundry and LucidIT was exercised in one Codex conversation on 2026-11-10; plugin handoffs and host-specific sign-in paths remain untested.

| Host | Included projection | Specialist support and inheritance | Server setup | State |
|---|---|---|---|---|
| Codex / ChatGPT | OpenAI plugin with skills/MCP; Codex project agents | Codex custom subagents are project-scoped and inherit parent permissions, provider, and MCP servers. ChatGPT plugin installation is not subagent deployment. | Remote MCP; complete user OAuth/SSO and verify active factory grants. | Server context switch tested in Codex MCP; host plugin runtime/handoffs and SSO untested. |
| Cursor | Cursor Plugin with lead/specialist agents, skills, and MCP | Native agent components are included; prove actual lead-to-child handoff in the active Cursor surface. | MCP is configured for the parent; bind/verify every principal the runtime exposes. | Files prepared; handoff/bindings untested. |
| Claude Code / Cowork | Claude plugin with agents, skills, and MCP | Agent components are available only on supported surfaces; test Code and Cowork separately. | Connector setup and sign-in are separate from installing the plugin. | Files prepared; per-surface tests unrun. |
| Grok Build | Claude-compatible plugin, skills, MCP, AGENTS.md | Grok Build documents plugins and subagents and reads Claude plugin structures; validate behavior in the installed release. | Confirm OAuth support and Server endpoint reachability from runtime. | Projection prepared; handoff/auth untested. |
| Copilot Studio | Manual build kit for one parent and connected children | Build one Project Bot parent and one reusable child-agent graph; select the project through its Server factory context. Brandy-led Brand Bot is separate. | Add MCP to every agent needing Server tools; configure user sign-in per supported agent connection. | Copy/paste instructions only; graph not deployed. |

A project name or folder alone does not create another Project Bot. Use the same Project Bot with separate Server-backed contexts wherever the data, corpus, policies, grants, or durable state differ. A live check in one Codex conversation returned Foundry READY (11/11 roster) and LucidIT READY (9/9), both with vector retrieval and zero stale semantic-index entries. This verifies the Server context switch, not the Copilot/Cursor/Claude/Grok host adapters or child handoffs. See docs/project-context-selection.md.

Marketplace directories are separate. The GitHub repository is not a universal one-click listing. Follow `RELEASE-CHECKLIST.md` before submission.
