---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tiIndicators = await client.api('/security/tiIndicators')
	.version('beta')
	.get();

```