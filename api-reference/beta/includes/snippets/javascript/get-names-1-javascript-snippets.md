---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let names = await client.api('/me/profile/names')
	.version('beta')
	.get();

```