---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2xIdentityUserFlow = {
    id: 'UserFlowWithAPIConnector',
    userFlowType: 'signUpOrSignIn',
    userFlowTypeVersion: 1,
    apiConnectorConfiguration: {
        postFederationSignup: {
            '@odata.id': 'https://graph.microsoft.com/v1/identity/apiConnectors/{id}'
        },
        postAttributeCollection: {
            '@odata.id': 'https://graph.microsoft.com/v1/identity/apiConnectors/{id}'
        }
    }
};

await client.api('/identity/b2xUserFlows')
	.post(b2xIdentityUserFlow);

```