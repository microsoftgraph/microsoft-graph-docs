---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/me/outlook/tasks('AAMkADA1MT15rfAAA=')/complete')
	.version('beta')
	.post();

```