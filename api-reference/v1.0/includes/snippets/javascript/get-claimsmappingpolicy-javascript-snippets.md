---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let claimsMappingPolicy = await client.api('/policies/claimsMappingPolicies/{id}')
	.get();

```