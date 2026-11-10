# Factory Agent composition

A Factory Agent is the task-specific configuration for one factory: desired outcome, accountable lead, reusable cast, approved context and workflows, authorized Server factory binding, and a host-native adapter. A role file defines what a specialist is good at. It does not create the child-agent runtime or grant permission.

One Project Bot identity serves multiple project contexts. Start it inside the intended host Project/workspace or have the operator name the project; resolve the exact currently granted Server connection from live results and run fresh startup. Foundry and LucidIT use separate authorized Server factories and retain isolated corpora, policies, grants, and durable state, but they do not get separate Probot agent instances. A brand-focused composition is distinct: Brandy leads Brand Bot, with Probot, Fred, Data, Carver, and Monet reusable in specialist roles.

A topic or folder alone does not create a factory. Separate the factory boundary when purpose, authorized corpus, customer/tenant scope, policy, workflow, durable state, or grants need isolation. A database is one possible boundary mechanism; database names alone do not prove the correct policy or tenant boundary.

Host Projects/workspaces are optional file and execution contexts. The o-MATIC Server is authoritative for identity-to-grant resolution, selected factory, governed startup, durable state, RAG, tools, and audit. Use OAuth/SSO and live Server grants. Do not assume all hosts inherit tools or support the same child-agent handoff.

See the host capability matrix and the host setup folders for platform-specific behavior.
