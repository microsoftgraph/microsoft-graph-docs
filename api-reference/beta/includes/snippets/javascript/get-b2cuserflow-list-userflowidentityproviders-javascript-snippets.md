---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userFlowIdentityProviders = await client.api('/identity/b2cUserFlows/B2C_test_signin_signup/userflowIdentityProviders')
	.version('beta')
	.get();

```