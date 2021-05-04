---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
    '@odata.type': '#microsoft.graph.fido2AuthenticationMethodConfiguration',
    state: 'enabled',
    isAttestationEnforced: 'true'
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/fido2')
	.version('beta')
	.update(authenticationMethodConfiguration);

```