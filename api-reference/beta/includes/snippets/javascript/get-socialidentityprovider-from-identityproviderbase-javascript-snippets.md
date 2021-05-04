---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProviderBase = await client.api('/identity/identityProviders/Amazon-OAUTH')
	.version('beta')
	.get();

```