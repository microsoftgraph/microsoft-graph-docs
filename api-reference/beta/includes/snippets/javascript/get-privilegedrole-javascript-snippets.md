---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedRole = await client.api('/privilegedRoles/{id}')
	.version('beta')
	.get();

```