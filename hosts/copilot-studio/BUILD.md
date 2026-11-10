# Build Project Bot in Copilot Studio

This is a manual projection because Agent Builder does not import the whole Foundry graph from this repository. Build one reusable o-MATIC Project Bot for all project contexts; do not create separate Probot agents for Foundry and LucidIT. Follow [project-context selection](../../docs/project-context-selection.md).

## Create the parent

- **Name:** o-MATIC Project Bot
- **Description:** o-MATIC factory coordinator. Turns requests into clear plans, routes work to verified specialists, and owns the result from startup through evidence-based closeout. Uses live o-MATIC Server tools only when connected and authorized.
- Paste [`../../roles/probot.md`](../../roles/probot.md) into the parent Instructions, then add `AGENTS.md` shared rules as allowed by the field limit.
- Enable generative orchestration.
- Add o-MATIC Server MCP at `https://factory.o-matic.ai/mcp`. Complete the supported OAuth/Entra SSO configuration. Verify tools after sign-in.
- For on-premise use, change the MCP URL to the reachable on-prem endpoint. Do not put credentials in instructions.

## Add five reusable specialists

Add these five reusable specialist roles once to the single Project Bot connected-agent graph, using the matching role file as each specialist's instructions. Use the same graph when Project Bot works in Foundry or LucidIT:

| Child | Description |
|---|---|
| Fred | Extracts and chunks documents, preserves source context, and prepares source-linked summaries. Asks before changing a corpus and surfaces source conflicts. |
| Data | Engineers PostgreSQL, pgvector, and hybrid retrieval, including indexes, query plans, model compatibility, and measured retrieval quality. |
| Carver | Implements web and software work from specification through relevant checks, diff review, and evidence-backed delivery. |
| Brandy | Leads brand strategy, messaging, campaign concepts, market strategy, and channel strategy. |
| Monet | Designs modern, media-aware visual systems with expert typography, layout, hierarchy, and art direction. |

Connect these as child/connected agents in the one Project Bot orchestration graph. The same Project Bot works in Foundry or LucidIT: start it in the host Project/workspace or have the operator name the project, resolve the exact authorized Server connection from live grants, then run a fresh startup against that context. Do not make a second Probot agent for LucidIT. The Server enforces each project's own tenant, corpus, policies, and grants. For Brand Factory, a distinct Brandy-led Brand Bot is appropriate; reuse these specialist definitions and keep Probot in the factory-operations lane. Give the parent descriptions that make routing intent clear. If a child calls o-MATIC Server, add the MCP tool to that child as well and configure its supported SSO connection. Do not assume parent tool authentication or knowledge crosses the boundary.

## Acceptance checks

1. In a new conversation, ask Project Bot to list its connected specialists and available Server tools. Confirm the returned live tool surface.
2. Start in the Foundry workspace and confirm the live startup result, identity, retrieval, governance, and continuity separately.
3. In the same Project Bot agent, switch to LucidIT by naming the project, then confirm a fresh startup against its exact authorized Server connection. Verify that its corpus, policies, grants, and durable state remain isolated from Foundry.
4. Give it a document question and confirm Fred cites source locations and asks before indexing.
5. Ask a vector retrieval engineering question and confirm Data uses measured schema/query evidence.
6. Ask for a small web implementation plan and confirm Carver includes responsive, accessibility, functional, browser-rendered, and diff checks.
7. Ask a brand campaign question and confirm Brandy owns market/channel strategy as well as brand-led messaging.
8. Ask for a visual direction and confirm Monet discusses typography, layout, hierarchy, and useful media.
9. Ask a cross-role request and inspect the activity map for actual child-agent handoffs. Do not infer handoffs from the final answer.
10. Test OAuth with a non-production identity and confirm least-privilege Server grants.
11. Repeat on each Copilot surface being shipped. Publishing the agent is not proof that a handoff or connector works there.
