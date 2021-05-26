---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorizationPolicy = {
   defaultUserRolePermissions: {
      permissionGrantPoliciesAssigned: [
         'managePermissionGrantsForSelf.microsoft-user-default-low'
      ]
   }
};

await client.api('/policies/authorizationPolicy')
	.update(authorizationPolicy);

```