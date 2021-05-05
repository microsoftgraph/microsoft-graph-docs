---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const temporaryAccessPassAuthenticationMethod = {
  '@odata.type': '#microsoft.graph.temporaryAccessPassAuthenticationMethod',
  startDateTime: '2021-01-26T00:00:00.000Z',
  lifetimeInMinutes: 60,
  isUsableOnce: false
};

await client.api('/users/kim@contoso.com/authentication/temporaryAccessPassMethods')
	.version('beta')
	.post(temporaryAccessPassAuthenticationMethod);

```