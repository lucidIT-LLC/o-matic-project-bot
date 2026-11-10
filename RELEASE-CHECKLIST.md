# Release checklist

- Reconcile role text with current Foundry gold records and record the source version.
- Validate every manifest against current host schemas.
- Verify each MCP endpoint and OAuth/SSO flow using a non-production account.
- Verify least-privilege grants; test each specialist connection independently.
- Exercise startup, failure recovery, delegation, merge, approval pause, verification, and closeout on each host surface.
- Record each host result as pass, fail, or unverified. A package install is not a handoff test.
- Verify all icon/avatar assets against the persona asset registry before bundling; never substitute another role's art.
- Keep credentials, private procedures, real customer data, and factory database exports out of the repository.
- Review licensing and marketplace submission requirements for each listing.
