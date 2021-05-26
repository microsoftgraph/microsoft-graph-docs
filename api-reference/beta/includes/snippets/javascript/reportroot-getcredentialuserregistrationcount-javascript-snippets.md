---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getCredentialUserRegistrationCount = await client.api('/reports/getCredentialUserRegistrationCount')
	.version('beta')
	.get();

```