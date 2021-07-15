---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessPolicyCoverages = await client.api('/tenantRelationships/managedTenants/conditionalAccessPolicyCoverages')
	.version('beta')
	.get();

```