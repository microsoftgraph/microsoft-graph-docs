---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleManagementPolicy = await client.api('/policies/roleManagementPolicies/f93a5c37-5c37-f93a-375c-3af9375c3af9')
	.version('beta')
	.get();

```