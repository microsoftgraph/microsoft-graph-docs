---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
   description: 'Contoso Life v2.0',
   displayName: 'Contoso Life Renewed'
};

await client.api('/groups/{id}')
	.version('beta')
	.update(group);

```