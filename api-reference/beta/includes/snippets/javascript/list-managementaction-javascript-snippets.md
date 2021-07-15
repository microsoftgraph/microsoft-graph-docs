---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managementActions = await client.api('/tenantRelationships/managedTenants/managementActions')
	.version('beta')
	.get();

```