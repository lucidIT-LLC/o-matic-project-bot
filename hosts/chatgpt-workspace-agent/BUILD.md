# Create Project Bot in the ChatGPT Agents directory

This is the native ChatGPT Workspace Agent projection. It is separate from the OpenAI plugin package: installing a plugin does not create a workspace agent.

## Create and configure

1. In ChatGPT, open **Agents → Create → Start blank**.
2. Set the name to **o-MATIC Project Bot**.
3. Set the description to the text below.
4. Paste [`instructions.md`](instructions.md) into the Instructions field.
5. Upload [`assets/logo.png`](assets/logo.png) as the agent icon.
6. Under **Tools → Add tool**, add the o-MATIC Server custom MCP:
   - Cloud default: `https://factory.o-matic.ai/mcp`
   - For on-premise: replace this with the operator's reachable Server MCP URL.
   - Configure end-user authentication and complete the supported SSO sign-in. Do not place credentials in instructions or files.
7. Add the Project Bot specialist skills from the OpenAI package's `skills/` directory: Probot, Fred, Data, Carver, Brandy, and Monet. A plugin install does not automatically attach those skills to a workspace agent.
8. Preview, then test a fresh startup and confirm the Server identity, available tools, and grants.
9. Under **Channels → ChatGPT**, set access to **Publish to [organization] directory** and publish. The directory entry appears after publication and workspace-directory sync.

## Description

o-MATIC factory lead. Probot starts the selected project factory, routes work to specialist skills, and owns results through evidence-based closeout. Warm, steady, lightly witty. Requires your authenticated o-MATIC Server connection.

## Host capability limit

ChatGPT Workspace Agent setup supports skills, files, tools, and custom MCPs. The current builder documentation does not describe native child-agent delegation. Probot must not claim Fred, Data, Carver, Brandy, or Monet ran as separate agents unless the live host shows an actual handoff. Without that capability, he follows the relevant specialist skill himself and reports that honestly.
