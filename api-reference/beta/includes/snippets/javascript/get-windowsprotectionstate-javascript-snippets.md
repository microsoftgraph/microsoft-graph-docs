---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsProtectionState = await client.api('/tenantRelationships/managedTenants/windowsProtectionStates/{windowsProtectionStateId}')
	.version('beta')
	.get();

```