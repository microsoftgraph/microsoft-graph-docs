---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignment = {
    principalId:"a98eb769-7bd4-4489-86f6-ad96e1d58b62",
    roleDefinitionId:"b0f54661-2d74-4c50-afa3-1ec803f12efe",
    resourceScope:"/"
};

let res = await client.api('/roleManagement/directory/roleAssignments')
	.version('beta')
	.post(unifiedRoleAssignment);

```