---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcOverview = await client.api('/tenantRelationships/managedTenants/cloudPcsOverview/{cloudPcOverviewId}')
	.version('beta')
	.get();

```