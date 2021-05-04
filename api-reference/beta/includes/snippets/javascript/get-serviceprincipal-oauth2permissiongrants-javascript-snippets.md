---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oauth2PermissionGrants = await client.api('/servicePrincipals/{id}/oauth2PermissionGrants')
	.version('beta')
	.get();

```