---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKey = {
  use: 'use-value',
  k: 'application-secret-to-be-uploaded',
  nbf: 1508969811,
  exp: 1508973711
};

await client.api('/trustFramework/keySets/{id}/uploadSecret')
	.version('beta')
	.post(trustFrameworkKey);

```