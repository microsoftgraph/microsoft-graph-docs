---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProvider = await client.api('/identityProviders/Amazon-OAuth')
	.get();

```