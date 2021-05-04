---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let patents = await client.api('/me/profile/patents')
	.version('beta')
	.get();

```