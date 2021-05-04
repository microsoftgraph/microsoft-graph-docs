---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let credentialUserRegistrationDetails = await client.api('/reports/credentialUserRegistrationDetails')
	.version('beta')
	.get();

```