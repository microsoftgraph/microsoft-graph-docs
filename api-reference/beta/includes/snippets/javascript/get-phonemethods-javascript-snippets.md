---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let phoneMethods = await client.api('/me/authentication/phoneMethods')
	.version('beta')
	.get();

```