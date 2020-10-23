---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deletePasswordSingleSignOnCredentials = {
  id: "5793aa3b-cca9-4794-679a240f8b58"
};

let res = await client.api('/servicePrincipals/{id}/deletePasswordSingleSignOnCredentials')
	.version('beta')
	.post(deletePasswordSingleSignOnCredentials);

```