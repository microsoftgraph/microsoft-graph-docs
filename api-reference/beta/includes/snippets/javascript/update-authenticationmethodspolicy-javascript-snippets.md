---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodsPolicy = {
  registrationEnforcement: {
    authenticationMethodsRegistrationCampaign: {
        snoozeDurationInDays: 1,
        state: 'enabled',
        excludeTargets: [],
        includeTargets: [
            {
                id: '3ee3a9de-0a86-4e12-a287-9769accf1ba2',
                targetType: 'group',
                targetedAuthenticationMethod: 'microsoftAuthenticator'
            }
        ]
    }
  }
};

await client.api('/policies/authenticationMethodsPolicy')
	.version('beta')
	.update(authenticationMethodsPolicy);

```