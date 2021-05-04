---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activityBasedTimeoutPolicy = await client.api('/policies/activityBasedTimeoutPolicies/{id}')
	.version('beta')
	.get();

```