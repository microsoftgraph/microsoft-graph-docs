---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2cIdentityUserFlow = {
    id: 'UserFlowWithAPIConnector',
    userFlowType: 'signUpOrSignIn',
    userFlowTypeVersion: 1,
    apiConnectorConfiguration: {
        postFederationSignup: {
            '@odata.id': '{apiConnectorId}'
        },
        postAttributeCollection: {
            '@odata.id': '{apiConnectorId}'
        }
    }
};

await client.api('/identity/b2cUserFlows')
	.version('beta')
	.post(b2cIdentityUserFlow);

```