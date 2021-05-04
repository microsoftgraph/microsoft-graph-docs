---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oAuth2PermissionGrant = await client.api('/oauth2PermissionGrants/{id}')
	.get();

```