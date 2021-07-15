---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcConnections = await client.api('/tenantRelationships/managedTenants/cloudPcConnections')
	.version('beta')
	.get();

```