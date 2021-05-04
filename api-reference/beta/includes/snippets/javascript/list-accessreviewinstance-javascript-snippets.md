---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let instances = await client.api('/identityGovernance/accessReviews/definitions/8564a649-4f67-4e09-88e7-55def6530e88/instances')
	.version('beta')
	.skip(0)
	.top(100)
	.get();

```