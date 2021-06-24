---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let createdObjects = await client.api('/servicePrincipals/{id}/createdObjects')
	.version('beta')
	.get();

```