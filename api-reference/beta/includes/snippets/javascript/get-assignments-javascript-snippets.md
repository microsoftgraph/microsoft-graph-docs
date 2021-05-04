---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignments = await client.api('/privilegedRoles/{id}/assignments')
	.version('beta')
	.get();

```