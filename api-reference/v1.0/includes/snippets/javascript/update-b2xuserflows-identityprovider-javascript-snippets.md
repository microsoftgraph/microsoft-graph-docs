---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProvider = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/identityProviders/Facebook-OAUTH'
};

await client.api('/identity/b2xUserFlows/B2X_1_Partner/identityProviders/$ref')
	.post(identityProvider);

```