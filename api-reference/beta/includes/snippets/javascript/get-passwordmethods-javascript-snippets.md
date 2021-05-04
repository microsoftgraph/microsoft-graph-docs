---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let passwordMethods = await client.api('/me/authentication/passwordMethods')
	.version('beta')
	.get();

```