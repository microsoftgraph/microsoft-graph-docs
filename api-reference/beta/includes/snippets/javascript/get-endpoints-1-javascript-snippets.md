---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let endpoints = await client.api('/groups/{id}/endpoints')
	.version('beta')
	.get();

```