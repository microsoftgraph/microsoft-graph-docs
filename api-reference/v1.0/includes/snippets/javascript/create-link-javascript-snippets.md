---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  type: 'view',
  password: 'ThisIsMyPrivatePassword',
  scope: 'anonymous'
};

await client.api('/me/drive/items/{item-id}/createLink')
	.post(permission);

```