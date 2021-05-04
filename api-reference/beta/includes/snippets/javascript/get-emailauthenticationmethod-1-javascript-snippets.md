---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let emailAuthenticationMethod = await client.api('/me/authentication/emailMethods/3ddfcfc8-9383-446f-83cc-3ab9be4be18f')
	.version('beta')
	.get();

```