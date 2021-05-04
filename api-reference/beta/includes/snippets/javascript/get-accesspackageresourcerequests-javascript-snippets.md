---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageResourceRequests = await client.api('/identityGovernance/entitlementManagement/accessPackageResourceRequests')
	.version('beta')
	.get();

```