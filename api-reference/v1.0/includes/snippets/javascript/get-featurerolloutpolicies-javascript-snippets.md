---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let featureRolloutPolicies = await client.api('/policies/featureRolloutPolicies')
	.get();

```