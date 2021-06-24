---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/users/kim@contoso.com/authentication/temporaryAccessPassMethods/{id}')
	.version('beta')
	.delete();

```