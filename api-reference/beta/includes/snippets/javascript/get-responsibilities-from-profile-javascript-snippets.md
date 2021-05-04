---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let responsibilities = await client.api('/me/responsibilities')
	.version('beta')
	.get();

```