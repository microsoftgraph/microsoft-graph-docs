---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantTag = {
  displayName: 'Support',
  description: 'Tenants that have purchased extended support'
};

await client.api('/tenantRelationships/managedTenants/tenantTags')
	.version('beta')
	.post(tenantTag);

```