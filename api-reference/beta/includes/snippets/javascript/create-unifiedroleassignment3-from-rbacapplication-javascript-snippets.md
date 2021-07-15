---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignment = {
    principalId: '679a9213-c497-48a4-830a-8d3d25d94ddc',
    roleDefinitionId: 'ae79f266-94d4-4dab-b730-feca7e132178',
    appScopeId: '/AccessPackageCatalog/beedadfe-01d5-4025-910b-84abb9369997'
};

await client.api('/roleManagement/entitlementManagement/roleAssignments')
	.version('beta')
	.post(unifiedRoleAssignment);

```