---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/{id}/members/microsoft.graph.user')
	.header('ConsistencyLevel','eventual')
	.search('displayName:Pr')
	.select('displayName,id')
	.orderby('displayName ')
	.get();

```