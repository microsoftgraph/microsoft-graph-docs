---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oauth2PermissionGrants = await client.api('/users/7d54cb02-aaa3-4016-9f9c-a4b49422dd9b/oauth2PermissionGrants')
	.version('beta')
	.get();

```