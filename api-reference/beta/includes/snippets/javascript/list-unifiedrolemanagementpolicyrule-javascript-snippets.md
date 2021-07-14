---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let rules = await client.api('/policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}/rules')
	.version('beta')
	.get();

```