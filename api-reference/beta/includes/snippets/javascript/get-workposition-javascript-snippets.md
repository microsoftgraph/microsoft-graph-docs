---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workPosition = await client.api('/me/profile/positions/{id}')
	.version('beta')
	.get();

```