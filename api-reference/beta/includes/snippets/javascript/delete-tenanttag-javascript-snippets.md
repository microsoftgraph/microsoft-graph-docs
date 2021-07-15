---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/tenantRelationships/managedTenants/tenantTags/{tenantTagId}')
	.version('beta')
	.delete();

```