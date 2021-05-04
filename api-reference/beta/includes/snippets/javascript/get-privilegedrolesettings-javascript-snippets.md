---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedRoleSettings = await client.api('/privilegedRoles/{id}/settings')
	.version('beta')
	.get();

```