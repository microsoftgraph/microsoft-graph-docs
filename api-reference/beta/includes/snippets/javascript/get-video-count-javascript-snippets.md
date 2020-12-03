---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups/{id}/memberOf/microsoft.graph.group')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.search('displayName:Video')
	.orderby('displayName ')
	.get();

```