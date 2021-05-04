---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  grantees: [
    {
      email: 'ryan@contoso.com'
    }
  ]
};

await client.api('/me/drive/items/{item-id}/permissions/{perm-id}/revokeGrants')
	.version('beta')
	.post(permission);

```