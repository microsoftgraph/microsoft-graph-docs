---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roomlist = await client.api('/places/microsoft.graph.roomlist')
	.get();

```