---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/groups/{id}/transitiveMembers/microsoft.graph.user')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.filter('startswith(displayName, \'a\')')
	.orderby('displayName')
	.get();

```