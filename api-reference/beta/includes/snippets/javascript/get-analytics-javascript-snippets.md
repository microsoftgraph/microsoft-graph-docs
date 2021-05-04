---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let itemAnalytics = await client.api('/drives/{drive-id}/items/{item-id}/analytics')
	.version('beta')
	.get();

```