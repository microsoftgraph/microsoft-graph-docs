---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let conditionalAccessPolicy = await client.api('/identity/conditionalAccess/policies/{id}')
	.version('beta')
	.get();

```