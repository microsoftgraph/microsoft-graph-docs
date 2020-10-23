---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorizationPolicy = {
    defaultUserRolePermissions:
    {
      allowedToCreateApps: false
    }
};

let res = await client.api('/policies/authorizationPolicy/authorizationPolicy')
	.version('beta')
	.update(authorizationPolicy);

```