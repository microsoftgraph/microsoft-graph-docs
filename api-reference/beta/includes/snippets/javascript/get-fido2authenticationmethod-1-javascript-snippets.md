---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fido2AuthenticationMethod = await client.api('/me/authentication/fido2Methods/-2_GRUg2-HYz6_1YG4YRAQ2')
	.version('beta')
	.get();

```