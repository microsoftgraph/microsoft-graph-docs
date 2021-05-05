---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageCatalogs = await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs')
	.version('beta')
	.get();

```