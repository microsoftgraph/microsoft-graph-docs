---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/{id}/members/microsoft.graph.user/$count')
	.header('ConsistencyLevel','eventual')
	.get();

```