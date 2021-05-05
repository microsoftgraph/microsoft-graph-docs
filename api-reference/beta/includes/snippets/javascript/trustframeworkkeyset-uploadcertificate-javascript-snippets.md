---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKey = {
  key: 'key-value'
};

await client.api('/trustFramework/keySets/{id}/uploadCertificate')
	.version('beta')
	.post(trustFrameworkKey);

```