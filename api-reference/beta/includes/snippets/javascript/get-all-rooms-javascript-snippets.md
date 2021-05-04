---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let room = await client.api('/places/microsoft.graph.room')
	.version('beta')
	.get();

```