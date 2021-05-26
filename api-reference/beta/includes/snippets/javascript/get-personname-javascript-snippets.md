---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let personName = await client.api('/me/profile/names/{id}')
	.version('beta')
	.get();

```