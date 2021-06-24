---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let endpoint = await client.api('/groups/{id}/endpoints/{id}')
	.version('beta')
	.get();

```