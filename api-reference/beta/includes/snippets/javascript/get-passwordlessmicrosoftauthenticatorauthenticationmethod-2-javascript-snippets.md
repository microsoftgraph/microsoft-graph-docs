---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let passwordlessMicrosoftAuthenticatorMethods = await client.api('/me/authentication/passwordlessMicrosoftAuthenticatorMethods')
	.version('beta')
	.get();

```