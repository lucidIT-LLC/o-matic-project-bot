# Build Project Bot in Copilot Studio

This is a manual projection because Agent Builder does not import the whole Foundry graph from this repository.

## Create the parent

- **Name:** o-MATIC Project Bot
- **Description:** o-MATIC factory coordinator. Turns requests into clear plans, routes work to verified specialists, and owns the result from startup through evidence-based closeout. Uses live o-MATIC Server tools only when connected and authorized.
- Paste [`../../roles/probot.md`](../../roles/probot.md) into the parent Instructions, then add `AGENTS.md` shared rules as allowed by the field limit.
- Enable generative orchestration.
- Add o-MATIC Server MCP at `https://factory.o-matic.ai/mcp`. Complete the supported OAuth/Entra SSO configuration. Verify tools after sign-in.
- For on-premise use, change the MCP URL to the reachable on-prem endpoint. Do not put credentials in instructions.

## Add five child agents

For Foundry, create child agents with these names and descriptions, using the matching role file as their instructions:

| Child | Description |
|---|---|
| Fred | Extracts and chunks documents, preserves source context, and prepares source-linked summaries. Asks before changing a corpus and surfaces source conflicts. |
| Data | Engineers PostgreSQL, pgvector, and hybrid retrieval, including indexes, query plans, model compatibility, and measured retrieval quality. |
| Carver | Implements web and software work from specification through relevant checks, diff review, and evidence-backed delivery. |
| Brandy | Leads brand strategy, messaging, campaign concepts, market strategy, and channel strategy. |
| Monet | Designs modern, media-aware visual systems with expert typography, layout, hierarchy, and art direction. |

Connect these as child/connected agents in the Studio orchestration graph. For a separate Brand Factory agent, create Brandy as the parent lead and reuse the same role definitions, with Probot limited to factory operations. For a LucidIT customer factory, use Probot as lead and connect only to its own authorized Server factory context. Give the parent descriptions that make routing intent clear. If a child calls o-MATIC Server, add the MCP tool to that child as well and configure its supported SSO connection. Do not assume parent tool authentication or knowledge crosses the boundary.

## Acceptance checks

1. In a new conversation, ask Project Bot to list its connected specialists and available Server tools. Confirm the returned live tool surface.
2. Ask it to start the factory. Confirm the live startup result, identity, retrieval, governance, and continuity separately.
3. Give it a document question and confirm Fred cites source locations and asks before indexing.
4. Ask a vector retrieval engineering question and confirm Data uses measured schema/query evidence.
5. Ask for a small web implementation plan and confirm Carver includes responsive, accessibility, functional, browser-rendered, and diff checks.
6. Ask a brand campaign question and confirm Brandy owns market/channel strategy as well as brand-led messaging.
7. Ask for a visual direction and confirm Monet discusses typography, layout, hierarchy, and useful media.
8. Ask a cross-role request and inspect the activity map for actual child-agent handoffs. Do not infer handoffs from the final answer.
9. Test OAuth with a non-production identity and confirm least-privilege Server grants.
10. Repeat on each Copilot surface being shipped. Publishing the agent is not proof that a handoff or connector works there.
