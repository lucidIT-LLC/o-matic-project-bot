# One Project Bot, many project contexts

Project Bot (Probot) is one reusable agent identity. Foundry, LucidIT, Practically Adventist, and other named projects are operating contexts for that agent, not separate Project Bot agents. Start the same agent inside a host Project/workspace or name the project in the request.

## Select the project safely

1. Identify the intended project from the current host workspace or the operator's request. Do not infer a project when the request or workspace is ambiguous.
2. Resolve that project to the exact o-MATIC Server connection currently granted to the signed-in user. Use live Server results; package examples and past startup cards are not authority.
3. Run a fresh Server startup against that exact connection before project work. If a project cannot be matched unambiguously to one authorized factory, ask before accessing project data.
4. Keep the selected project's corpus, policies, grants, durable work state, and retrieval isolated. A project switch changes the Server factory context; it does not copy or merge project data and does not create another agent.
5. Keep one stable conversation key for the chat. Each Server factory stores its own isolated kernel and state under its own database/tenant boundary.
6. When switching projects in a live conversation, name the switch, run startup again for the newly selected connection, and verify the returned identity, retrieval, governance, and continuity before proceeding.

The user's host sign-in is not itself a factory grant. Each action remains limited by the live Server grants for the selected project. Never carry a result, document, memory, or authorization from one project into another unless the operator explicitly asks and the Server permits it.

## Project Bot and Brand Bot

Foundry and customer project work use the same Project Bot identity and reusable specialist cast. Brand Bot is a distinct Brandy-led agent composition because Brandy owns a different brand-led outcome; Probot may participate in factory operations. Reuse specialist role definitions instead of cloning them per project.

## Verified Server context test

On 2026-11-10, the same Project Bot conversation and stable key completed fresh startup against both live contexts:
- o-MATIC Foundry: READY, roster 11/11, vector retrieval, zero stale semantic-index entries.
- lucidIT: READY, roster 9/9, vector retrieval, zero stale semantic-index entries.

This verifies that the Server exposes two usable contexts to the same signed-in session under their respective grants. It does not verify Copilot Studio or other host-specific agent configuration, child-agent handoffs, or marketplace installation. Run those checks in each host before claiming host runtime acceptance.
