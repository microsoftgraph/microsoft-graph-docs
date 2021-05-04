---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
    '@odata.type': '#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration',
    state: 'enabled'
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/passwordlessMicrosoftAuthenticator')
	.version('beta')
	.update(authenticationMethodConfiguration);

```