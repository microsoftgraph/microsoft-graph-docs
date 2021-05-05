---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKey = {
  key: 'Base64-encoded-pfx-content',
  password: 'password-value'
};

await client.api('/trustFramework/keySets/{id}/uploadPkcs12')
	.version('beta')
	.post(trustFrameworkKey);

```