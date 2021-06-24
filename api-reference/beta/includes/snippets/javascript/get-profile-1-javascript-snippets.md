---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profile = await client.api('/me/profile')
	.version('beta')
	.get();

```