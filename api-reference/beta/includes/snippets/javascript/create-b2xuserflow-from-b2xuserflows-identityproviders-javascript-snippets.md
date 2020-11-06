---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2xIdentityUserFlow = {
    id: "Partner",
    userFlowType: "signUpOrSignIn",
    userFlowTypeVersion: 1,
    identityProviders: [
        {
            id: "Facebook-OAuth",
            type: "Facebook",
            name: "Facebook"
        }
    ]
};

let res = await client.api('/identity/b2xUserFlows')
	.version('beta')
	.post(b2xIdentityUserFlow);

```