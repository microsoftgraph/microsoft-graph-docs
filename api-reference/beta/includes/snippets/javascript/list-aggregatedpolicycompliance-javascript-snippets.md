---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let aggregatedPolicyCompliances = await client.api('/tenantRelationships/managedTenants/aggregatedPolicyCompliances')
	.version('beta')
	.get();

```