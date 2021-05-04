---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let owners = await client.api('/servicePrincipals/{id}/owners')
	.version('beta')
	.get();

```