---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationMethod = await client.api('/me/authentication/methods/{id}')
	.version('beta')
	.get();

```