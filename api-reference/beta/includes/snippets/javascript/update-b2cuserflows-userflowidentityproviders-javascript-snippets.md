---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const userFlowIdentityProviders = {
  '@odata.id': 'https://graph.microsoft.com/beta/identity/identityProviders/{id}'
};

await client.api('/identity/b2cUserFlows/B2C_test_signin_signup/userflowIdentityProviders/$ref')
	.version('beta')
	.update(userFlowIdentityProviders);

```