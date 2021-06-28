---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKeySet = {
  id: 'keyset1'  
};

await client.api('/trustFramework/keySets')
	.version('beta')
	.post(trustFrameworkKeySet);

```