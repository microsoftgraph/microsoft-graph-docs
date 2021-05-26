---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordSingleSignOnCredentialSet = {
  id: '5793aa3b-cca9-4794-679a240f8b58'
};

await client.api('/servicePrincipals/{id}/getPasswordSingleSignOnCredentials')
	.version('beta')
	.post(passwordSingleSignOnCredentialSet);

```