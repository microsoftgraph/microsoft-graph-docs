---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ["read"]
};

let res = await client.api('/sites/{sitesId}/permissions/{permissionId}')
	.version('beta')
	.update(permission);

```