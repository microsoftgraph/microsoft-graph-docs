---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackage = {
  catalogId: "aa2f6514-3232-46e7-a08a-2411ad8d7128",
  displayName: "sales reps",
  description: "outside sales representatives"
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackages')
	.version('beta')
	.post(accessPackage);

```