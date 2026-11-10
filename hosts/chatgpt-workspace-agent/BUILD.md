# o-MATIC Project Bot (Probot) — ChatGPT Workspace Agent build specification

This file builds the native ChatGPT Workspace Agent shown in the Agents directory. It is a separate host projection from the o-MATIC plugin. Installing the plugin does **not** create, configure, or publish this Workspace Agent.

> **Architecture gate:** This creates one Workspace Agent with tools and skills. The ChatGPT builder does not expose a sub-agent graph in its documented configuration. Adding Fred, Data, Carver, Brandy, and Monet as skills does not make them child agents or guarantee automatic handoffs. If the requirement is true L2 orchestration with independently executing specialists, do not treat this single-agent setup as the finished design or publish it as such. Choose an execution runtime that explicitly supports subagents and verify the handoffs.

> **MCP gate:** The Server's current client support register marks ChatGPT/Enterprise unverified. The connection from Codex is live, but that is not evidence that ChatGPT can reach or authenticate to the same endpoint. Follow the actual endpoint's OAuth and reachability checks below; do not mark the ChatGPT projection ready until a fresh ChatGPT test call succeeds under the intended user's identity.

## o-MATIC Server custom app card

Use these values when adding the custom MCP server through ChatGPT Plugins → Add custom MCP server:

**Name**  
o-MATIC Server

**Short description**  
Connects ChatGPT to o-MATIC Server factory tools and project data available to this authenticated connection.

**Icon**  
Upload [logo-chatgpt-10kb.png](assets/logo-chatgpt-10kb.png), a 256 × 256 palette-optimized copy of the canonical Probot mascot, at 9,755 bytes. The original master logo.png remains unchanged. Use this derivative only for the custom-MCP upload limit; do not redraw or substitute the robot.

**Server URL**  
Cloud: https://factory.o-matic.ai/mcp  
On-premise: the operator's externally reachable HTTPS MCP URL, or a supported Secure MCP Tunnel for a private host.

**Authentication**  
The Server's documented MCP OAuth flow is available, but its oauth-local consent uses a shared server-side consent key and is explicitly not full per-user SSO. Do not describe this connection as meeting the SSO requirement until the actual ChatGPT OAuth flow has been verified with user-specific identity and grants. The ChatGPT connector's Add/Save step and a successful tool call are separate acceptance checks.

The connector icon is a size-optimized copy of Probot’s canonical mascot; it preserves the established artwork while meeting the current upload cap.

## Agent card

**Name**  
o-MATIC Project Bot

**Icon**  
Upload assets/logo.png, preserving the shared Probot artwork.

**Description**  
Accountable o-MATIC factory lead. Starts the selected project context, routes work through specialist skills, and owns delivery through evidence-based closeout. Warm, steady, lightly witty; retro mission-control robot personality.

**Tagline (if offered)**  
The factory is cleared for launch. Let’s verify it.

**Works with**  
- The o-MATIC Server MCP attached directly to this Workspace Agent.
- The signed-in operator's own OAuth/SSO identity and live Server grants.
- The Probot, Fred, Data, Carver, Brandy, and Monet skills attached to this agent.
- The current ChatGPT Project context or a project named explicitly by the operator.

Do not list Gmail, Calendar, Slack, Teams, or other integrations as connected unless they are actually configured on this agent. Do not treat a plugin or an MCP connection in another conversation as inherited.

## Capabilities shown in the card

With the corresponding Server tools, grants, and skills attached, Project Bot can:

- Start the selected o-MATIC factory and report its live state.
- Turn requests into bounded plans with objectives, bottlenecks, dependencies, owners, and proof of completion.
- Route material document, data, software/web, marketing, and visual-design work through the matching specialist skill.
- Recover from startup problems within live authority and recheck the result.
- Verify work against the request and close out through supported Server workflows.

Phrase these as conditional capabilities: actual execution depends on the live tool surface, host support, and user grants.

## Create the Workspace Agent

1. In ChatGPT, open **Agents → Create**.
2. Choose **Start blank** (or create from a suitable template, then replace its content with this specification).
3. Set the name, description, icon, and optional tagline above.
4. Paste the companion instructions.md into the Agent's Instructions field.
5. Attach all six skill files from hosts/openai/skills/: probot, fred, data, carver, brandy, and monet. Use the skills already available to the workspace or upload the supported skill packages. Verify each appears on this agent before relying on it.
6. Under **Tools**, add the **o-MATIC Server MCP directly to Project Bot**:
   - Cloud default: https://factory.o-matic.ai/mcp
   - On-premise: use the operator's reachable Server MCP URL.
   - Configure **end-user authentication** and complete the host's supported OAuth/SSO connection. Each user must authorize as themselves when the host supports per-user auth.
   - Never put credentials in the Agent instructions or uploaded files.
7. Confirm the configured tool surface exposes the Server startup and required operations. Do not assume the MCP connector in ChatGPT Customize, a different agent, or the parent conversation is inherited.
8. If web search or other tools are needed, add them explicitly and only when enabled for the intended workflow. Do not describe a tool as connected before verifying it in this Agent's configuration.
9. Set a clear model and reasoning level appropriate for multi-step operational work, subject to workspace policy. Do not imply a specific model is required for Server access.
10. Add the suggested prompts below. Preview and test each against an appropriate test project or safe read-only request before creating/publishing.

## Suggested prompts

- **Start a factory** — “Start the [project] factory. Verify its identity, available tools, retrieval, governance, and continuity. Report each check separately.”
- **Plan work** — “Turn this request into a short plan, identify the bottleneck and dependencies, and define how we will verify completion: [request].”
- **Route specialist work** — “Use the appropriate attached specialist skill for this request. Tell me what evidence you used and what remains unverified: [request].”
- **Recover startup** — “Diagnose why the [project] factory did not start. Repair only what is within the current grant, then run startup again.”
- **Verify a delivery** — “Compare this result with the request. Check omissions and regressions, and report passed, failed, and unverified items separately.”
- **Close a session** — “Close this factory session using the supported Server workflow and verify that the closeout persisted.”

## Preview and acceptance checks

Before publishing, use a fresh ChatGPT conversation and verify:

1. Project Bot identifies itself and keeps the intended warm, steady, lightly witty voice.
2. The attached Server MCP is visible to this agent and its OAuth/SSO flow identifies the signed-in user.
3. Startup selects the exact requested Server factory and reports the live returned identity.
4. Tool, retrieval, governance, and continuity results are reported separately; unmeasured or unavailable is not reported as passed.
5. A project switch requires a fresh startup and does not carry data from the previous factory.
6. Each attached specialist skill is present and can be invoked by a representative prompt.
7. The agent does not claim a separate specialist handoff unless the host actually exposes and performs one.
8. It refuses or pauses at a destructive/production-impacting action according to the stated authority rules.
9. It reports only checks actually performed and does not claim completion when evidence is missing.

Do not use a production write as the first acceptance test.

## Publish to the organization directory

After the Workspace Agent exists and its preview checks pass:

1. Open **Channels → ChatGPT**.
2. Choose **Publish to [organization] directory** (the directory may appear under its organization-branded name, such as **o-MATIC.ai directory**).
3. Review who can access the agent and how its connected accounts authenticate.
4. Publish the Agent, then confirm it appears in the organization directory after sync.

Creating a draft, installing the plugin, or adding the repo as a marketplace is not publication. Publishing a Workspace Agent is separate from submitting a plugin to a public marketplace.

## Platform boundary

Current Workspace Agent documentation supports skills, files, tools, custom MCPs, agent channels, and publishing. It does not establish that this setup has native child-agent orchestration. Skills provide specialized instructions, but are not proof that Fred, Data, Carver, Brandy, or Monet execute as separate agents. For true specialist handoffs, require an exposed host handoff mechanism and verify each handoff in testing.