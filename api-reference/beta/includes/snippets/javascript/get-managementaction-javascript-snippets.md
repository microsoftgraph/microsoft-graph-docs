---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managementAction = await client.api('/tenantRelationships/managedTenants/managementActions/{managementActionId}')
	.version('beta')
	.get();

```