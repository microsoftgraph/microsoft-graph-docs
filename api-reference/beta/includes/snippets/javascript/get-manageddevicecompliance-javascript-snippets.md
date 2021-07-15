---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedDeviceCompliance = await client.api('/tenantRelationships/managedTenants/managedDeviceCompliances/{managedDeviceComplianceId}')
	.version('beta')
	.get();

```