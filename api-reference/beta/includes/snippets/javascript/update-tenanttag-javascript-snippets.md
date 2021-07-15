---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantTag = {
  displayName: 'Onboarding',
  description: 'Tenants that we are currently onboarding'
};

await client.api('/tenantRelationships/managedTenants/tenantTags/{tenantTagId}')
	.version('beta')
	.update(tenantTag);

```