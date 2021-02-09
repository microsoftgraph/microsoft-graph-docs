---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackage = {
  displayName:"Access Package New Name"
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackages/{accessPackageId}')
	.version('beta')
	.update(accessPackage);

```