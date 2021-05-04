---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contentType = await client.api('/sites/{site-id}/contentTypes/{contentType-id}')
	.version('beta')
	.get();

```