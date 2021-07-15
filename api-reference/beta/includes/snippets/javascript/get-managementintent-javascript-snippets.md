---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managementIntent = await client.api('/tenantRelationships/managedTenants/managementIntents/{managementIntentId}')
	.version('beta')
	.get();

```