---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managementIntents = await client.api('/tenantRelationships/managedTenants/managementIntents')
	.version('beta')
	.get();

```