---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managementActionDeploymentStatus = {
  tenantId: 'String',
  tenantGroupId: 'String',
  managementTemplateId: 'String'
};

await client.api('/tenantRelationships/managedTenants/managementActions/{managementActionId}/apply')
	.version('beta')
	.post(managementActionDeploymentStatus);

```