---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcsOverview = await client.api('/tenantRelationships/managedTenants/cloudPcsOverview')
	.version('beta')
	.get();

```