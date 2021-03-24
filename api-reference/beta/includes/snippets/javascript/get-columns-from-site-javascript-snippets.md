---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let columns = await client.api('/sites/{site-id}/columns')
	.version('beta')
	.get();

```