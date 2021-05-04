---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let includes = await client.api('/policies/permissionGrantPolicies/microsoft-application-admin/includes')
	.version('beta')
	.get();

```