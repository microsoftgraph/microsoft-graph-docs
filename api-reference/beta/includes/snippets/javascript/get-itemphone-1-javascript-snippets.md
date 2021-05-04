---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let itemPhone = await client.api('/me/profile/phones/{id}')
	.version('beta')
	.get();

```