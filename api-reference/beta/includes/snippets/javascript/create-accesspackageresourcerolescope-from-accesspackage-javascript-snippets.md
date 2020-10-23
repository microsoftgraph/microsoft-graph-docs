---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRoleScope = {
  accessPackageResourceRole:{
    originId:"Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca",
    displayName:"Member",
    originSystem:"AadGroup",
    accessPackageResource:{id:1d08498d-72a1-403f-8511-6b1f875746a0","resourceType:O365 Group","originId:b31fe1f1-3651-488f-bd9a-1711887fd4ca","originSystem:"AadGroup"}
  },
 accessPackageResourceScope:{
   originId:b31fe1f1-3651-488f-bd9a-1711887fd4ca","originSystem:"AadGroup"
 }
};

let res = await client.api('/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes')
	.version('beta')
	.post(accessPackageResourceRoleScope);

```