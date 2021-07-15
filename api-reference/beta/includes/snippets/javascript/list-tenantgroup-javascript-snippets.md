---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantGroups = await client.api('/tenantRelationships/managedTenants/tenantGroups')
	.version('beta')
	.get();

```