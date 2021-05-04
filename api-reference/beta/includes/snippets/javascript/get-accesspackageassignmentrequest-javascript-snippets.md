---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignmentRequest = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/{id}')
	.version('beta')
	.get();

```