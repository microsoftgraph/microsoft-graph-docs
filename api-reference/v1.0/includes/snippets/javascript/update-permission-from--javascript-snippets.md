---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ['read']
};

await client.api('/sites/{sitesId}/permissions/{permissionId}')
	.update(permission);

```