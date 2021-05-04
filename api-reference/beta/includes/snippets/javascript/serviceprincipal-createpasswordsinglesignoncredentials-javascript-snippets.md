---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordSingleSignOnCredentialSet = {
  id: '5793aa3b-cca9-4794-679a240f8b58',
  credentials: [
    {
      fieldId: 'param_username',
      value: 'myusername',
      type: 'username'
    },
    {
      fieldId: 'param_password',
      value: 'pa$$w0rd',
      type: 'password'
    }
  ]
};

await client.api('/servicePrincipals/{id}/createPasswordSingleSignOnCredentials')
	.version('beta')
	.post(passwordSingleSignOnCredentialSet);

```