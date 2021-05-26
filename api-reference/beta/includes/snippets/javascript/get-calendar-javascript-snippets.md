---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendar = await client.api('/me/calendar')
	.version('beta')
	.get();

```