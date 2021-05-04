---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groupLifecyclePolicies = await client.api('/groups/{id}/groupLifecyclePolicies')
	.version('beta')
	.get();

```