---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managementActionDeploymentStatus = {
  tenantGroupId: 'String',
  tenantId: 'String',
  managementActionId: 'String',
  managementTemplateId: 'String',
  status: 'String'
};

await client.api('/tenantRelationships/managedTenants/managementActionTenantDeploymentStatuses/changeDeploymentStatus')
	.version('beta')
	.post(managementActionDeploymentStatus);

```