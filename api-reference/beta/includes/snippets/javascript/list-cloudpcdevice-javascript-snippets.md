---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcDevices = await client.api('/tenantRelationships/managedTenants/cloudPcDevices')
	.version('beta')
	.get();

```