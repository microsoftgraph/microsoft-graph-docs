---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managementActionTenantDeploymentStatuses = await client.api('/tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses')
	.version('beta')
	.get();

```