---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = Content-Type: application/json
Content-length: 95

{
  grantees: [
    {
      email: "ryan@contoso.com"
    }
  ]
};

let res = await client.api('/me/drive/items/{item-id}/permissions/{perm-id}/revokeGrants')
	.version('beta')
	.post(permission);

```