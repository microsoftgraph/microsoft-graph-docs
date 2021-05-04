---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionGrantPolicy = await client.api('/policies/permissionGrantPolicies/microsoft-user-default-low')
	.get();

```