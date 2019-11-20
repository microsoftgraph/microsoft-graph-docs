---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
  accessPackageId: "56ff43fd-6b05-48df-9634-956a777fce6d",
  displayName: "direct",
  description: "direct assignments by administrator",
  isEnabled: true
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies')
	.version('beta')
	.post(accessPackageAssignmentPolicy);

```