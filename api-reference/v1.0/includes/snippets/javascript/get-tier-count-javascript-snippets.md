---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/groups/{id}/transitiveMembers/microsoft.graph.user')
	.header('ConsistencyLevel','eventual')
	.search('displayName:tier')
	.select('displayName,id')
	.orderby('displayName')
	.get();

```