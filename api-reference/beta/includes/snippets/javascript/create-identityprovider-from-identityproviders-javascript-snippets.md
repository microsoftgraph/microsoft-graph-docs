---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProvider = {
  @odata.type: "microsoft.graph.identityProvider",
  name: "Login with Amazon",
  type: "Amazon",
  clientId: "56433757-cadd-4135-8431-2c9e3fd68ae8",
  clientSecret: "000000000000"
};

let res = await client.api('/identityProviders')
	.version('beta')
	.post(identityProvider);

```