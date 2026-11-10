# Factory Agent composition

A Factory Agent is the task-specific configuration for one factory: desired outcome, accountable lead, reusable cast, approved context and workflows, authorized Server factory binding, and a host-native adapter. A role file defines what a specialist is good at. It does not create the child-agent runtime or grant permission.

## Source of truth

The public, version-controlled source tree for role definitions, compositions, host adapters, and distributable packages is [LucidIT-LLC/o-matic-project-bot](https://github.com/LucidIT-LLC/o-matic-project-bot). Do not maintain a parallel OneDrive source tree. Local checkouts and generated archives are temporary build workspaces; GitHub is canonical for public package bytes. The o-MATIC Foundry database is authoritative for the approved decisions, private governance, live factory identity, Server grants, and runtime state. This boundary is recorded in Foundry Decisions #867 and #868.

The same cast can serve multiple factories. The lead owns the result inside the selected factory. Foundry uses Probot, displayed as o-MATIC Project Bot. A customer-delivery composition may also use Probot with its own authorized Server factory and customer boundary. A brand-focused composition may use Brandy as lead with Probot, Fred, Data, Carver, and Monet as specialists.

A topic or folder alone does not create a factory. Separate the factory boundary when purpose, authorized corpus, customer/tenant scope, policy, workflow, durable state, or grants need isolation. A database is one possible boundary mechanism; database names alone do not prove the correct policy or tenant boundary.

Host Projects/workspaces are optional file and execution contexts. The o-MATIC Server is authoritative for identity-to-grant resolution, selected factory, governed startup, durable state, RAG, tools, and audit. Use OAuth/SSO and live Server grants. Do not assume all hosts inherit tools or support the same child-agent handoff.

See the host capability matrix and the host setup folders for platform-specific behavior.
