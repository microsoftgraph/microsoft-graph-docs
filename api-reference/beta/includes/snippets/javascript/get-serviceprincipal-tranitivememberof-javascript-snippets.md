---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let transitiveMemberOf = await client.api('/servicePrincipals/{id}/transitiveMemberOf')
	.version('beta')
	.get();

```