---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantGroup = {
  tenantId: 'String'
};

await client.api('/tenantRelationships/managedTenants/tenantGroups/tenantSearch')
	.version('beta')
	.post(tenantGroup);

```