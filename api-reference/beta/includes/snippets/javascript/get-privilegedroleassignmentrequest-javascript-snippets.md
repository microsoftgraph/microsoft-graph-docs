---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedRoleAssignmentRequests = await client.api('/privilegedRoleAssignmentRequests')
	.version('beta')
	.get();

```