---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incompatibleGroups = await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleGroups')
	.version('beta')
	.get();

```