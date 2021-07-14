---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let int32 = await client.api('/groups/{id}/transitiveMembers/$count')
	.version('beta')
	.header('ConsistencyLevel','eventual')
	.get();

```