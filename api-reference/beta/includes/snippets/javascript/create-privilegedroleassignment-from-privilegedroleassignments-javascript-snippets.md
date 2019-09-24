---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const privilegedRoleAssignment = {
  userId: "userId-value",
  roleId: "roleId-value"
};

let res = await client.api('/privilegedRoleAssignments')
	.version('beta')
	.post(privilegedRoleAssignment);

```