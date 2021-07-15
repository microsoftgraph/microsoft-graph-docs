---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackagesIncompatibleWith = await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackagesIncompatibleWith')
	.version('beta')
	.get();

```