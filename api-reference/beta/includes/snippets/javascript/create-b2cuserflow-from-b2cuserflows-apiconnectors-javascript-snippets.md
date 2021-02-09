---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2cIdentityUserFlow = {
    id: "UserFlowWithAPIConnector",
    userFlowType: "signUpOrSignIn",
    userFlowTypeVersion: 1,
    apiConnectorConfiguration:{
        postFederationSignup:{
            @odata.id: "https://graph.microsoft.com/beta/identity/apiConnectors/{id}"
        },
        postAttributeCollection:{
            @odata.id: "https://graph.microsoft.com/beta/identity/apiConnectors/{id}"
        }
    }
};

let res = await client.api('/identity/b2cUserFlows')
	.version('beta')
	.post(b2cIdentityUserFlow);

```