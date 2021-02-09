---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2cIdentityUserFlow = {
    id: "Customer",
    userFlowType: "signUpOrSignIn",
    userFlowTypeVersion: 3
};

let res = await client.api('/identity/b2cUserFlows')
	.version('beta')
	.post(b2cIdentityUserFlow);

```