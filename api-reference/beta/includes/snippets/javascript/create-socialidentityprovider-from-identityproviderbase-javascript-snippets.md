---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  '@odata.type': 'microsoft.graph.socialIdentityProvider',
  displayName: 'Login with Amazon',
  identityProviderType: 'Amazon',
  clientId: '56433757-cadd-4135-8431-2c9e3fd68ae8',
  clientSecret: '000000000000'
};

await client.api('/identity/identityProviders')
	.version('beta')
	.post(identityProviderBase);

```