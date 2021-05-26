---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fido2Methods = await client.api('/me/authentication/fido2Methods')
	.version('beta')
	.get();

```