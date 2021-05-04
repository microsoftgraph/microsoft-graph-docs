---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type': '#microsoft.graph.emailAuthenticationMethodConfiguration',
  allowExternalIdToUseEmailOtp: 'false',
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/email')
	.version('beta')
	.update(authenticationMethodConfiguration);

```