---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
    '@odata.type': '#microsoft.graph.smsAuthenticationMethodConfiguration',
    id: 'Sms',
    state: 'enabled'
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/sms')
	.version('beta')
	.update(authenticationMethodConfiguration);

```