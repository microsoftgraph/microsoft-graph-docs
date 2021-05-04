---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKey = {
  use: 'sig',
  kty: 'RSA',
  nbf: 1508969811,
  exp: 1508969811
};

await client.api('/trustFramework/keySets/{id}/generateKey')
	.version('beta')
	.post(trustFrameworkKey);

```