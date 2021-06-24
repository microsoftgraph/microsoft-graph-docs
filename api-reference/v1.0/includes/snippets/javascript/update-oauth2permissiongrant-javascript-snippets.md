---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
  scope: 'scope-value'
};

await client.api('/oauth2PermissionGrants/{id}')
	.update(oAuth2PermissionGrant);

```