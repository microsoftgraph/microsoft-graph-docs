---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let site = await client.api('/sites/{site-id}')
	.version('beta')
	.get();

```