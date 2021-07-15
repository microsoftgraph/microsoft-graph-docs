---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantsCustomizedInformation = await client.api('/tenantRelationships/managedTenants/tenantsCustomizedInformation')
	.version('beta')
	.get();

```