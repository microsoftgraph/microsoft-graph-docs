---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let notebooks = await client.api('/me/onenote/notebooks')
	.version('beta')
	.get();

```