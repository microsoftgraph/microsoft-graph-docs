---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let outlookTask = await client.api('/me/outlook/tasks/AAMkADA1MHgwAAA=')
	.version('beta')
	.header('Prefer','outlook.timezone="Pacific Standard Time"')
	.get();

```