---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let connections = await client.api('/external/connections')
	.version('beta')
	.get();

```