---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let interests = await client.api('/me/profile/interests')
	.version('beta')
	.get();

```