---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type':'#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration',
  state: 'enabled',
  defaultLifetimeInMinutes: 60,
  defaultLength: 8,
  minimumLifetimeInMinutes: 60,
  maximumLifetimeInMinutes: 1440,"
  isUsableOnce":false,
  includeTargets: [
        {
            targetType: 'group',
            id: 'all_users',
            isRegistrationRequired: false,
            useForSignIn: true
        }
    ]
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/TemporaryAccessPass')
	.version('beta')
	.update(authenticationMethodConfiguration);

```