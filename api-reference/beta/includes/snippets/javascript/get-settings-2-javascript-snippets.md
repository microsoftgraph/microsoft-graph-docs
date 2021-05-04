---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let settings = await client.api('/me/analytics/settings')
	.version('beta')
	.get();

```