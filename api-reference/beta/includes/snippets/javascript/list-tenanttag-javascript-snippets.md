---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tenantTags = await client.api('/tenantRelationships/managedTenants/tenantTags')
	.version('beta')
	.get();

```