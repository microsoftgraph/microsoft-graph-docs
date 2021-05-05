---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let trustFrameworkKeySet = await client.api('/trustFramework/keySets/{id}')
	.version('beta')
	.get();

```