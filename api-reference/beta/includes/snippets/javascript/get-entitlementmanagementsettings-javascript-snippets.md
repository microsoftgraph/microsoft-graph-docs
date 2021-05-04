---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let entitlementManagementSettings = await client.api('/identityGovernance/entitlementManagement/settings')
	.version('beta')
	.get();

```