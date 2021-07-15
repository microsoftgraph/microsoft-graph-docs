---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let windowsProtectionStates = await client.api('/tenantRelationships/managedTenants/windowsProtectionStates')
	.version('beta')
	.get();

```