---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let b2cIdentityUserFlow = await client.api('/identity/b2cUserFlows/{id}')
	.version('beta')
	.get();

```