---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/directory/deleteditems/microsoft.graph.group')
	.version('beta')
	.get();

```