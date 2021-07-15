---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcDevice = await client.api('/tenantRelationships/managedTenants/cloudPcDevices/{cloudPcDeviceId}')
	.version('beta')
	.get();

```