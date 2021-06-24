---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackages = await client.api('/identityGovernance/entitlementManagement/accessPackages')
	.version('beta')
	.get();

```