---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let my = await client.api('/privilegedRoleAssignments/my')
	.version('beta')
	.get();

```