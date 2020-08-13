---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProvider = {
  clientSecret: "1111111111111"
};

let res = await client.api('/identityProviders/Amazon-OAuth')
	.version('beta')
	.update(identityProvider);

```