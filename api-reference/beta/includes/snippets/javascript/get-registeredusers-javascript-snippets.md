---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let registeredUsers = await client.api('/devices/{id}/registeredUsers')
	.version('beta')
	.get();

```