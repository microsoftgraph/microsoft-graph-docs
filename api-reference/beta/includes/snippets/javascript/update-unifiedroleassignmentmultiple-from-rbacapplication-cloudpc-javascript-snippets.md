---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignmentMultiple = {
    displayName: 'NewName',
    description: 'A new roleAssignment'
};

await client.api('/roleManagement/cloudPC/roleAssignments/dbe9d288-fd87-41f4-b33d-b498ed207096')
	.version('beta')
	.update(unifiedRoleAssignmentMultiple);

```