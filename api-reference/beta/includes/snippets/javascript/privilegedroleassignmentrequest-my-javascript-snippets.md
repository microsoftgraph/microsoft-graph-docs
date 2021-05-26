---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let my = await client.api('/privilegedRoleAssignmentRequests/my')
	.version('beta')
	.get();

```