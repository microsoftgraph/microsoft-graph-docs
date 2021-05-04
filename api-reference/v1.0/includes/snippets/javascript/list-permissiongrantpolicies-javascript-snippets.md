---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrantPolicies = await client.api('/policies/permissionGrantPolicies')
	.get();

```