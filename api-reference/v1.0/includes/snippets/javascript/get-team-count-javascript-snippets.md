---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/servicePrincipals')
	.header('ConsistencyLevel','eventual')
	.search('displayName:Team')
	.get();

```