---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tiIndicator = await client.api('/security/tiIndicators/{id}')
	.version('beta')
	.get();

```