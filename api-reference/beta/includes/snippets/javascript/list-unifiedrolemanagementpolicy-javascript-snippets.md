---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleManagementPolicies = await client.api('/policies/roleManagementPolicies')
	.version('beta')
	.get();

```