---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userFlows = await client.api('/identity/userFlows')
	.version('beta')
	.get();

```