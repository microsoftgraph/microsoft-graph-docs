---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const validateCredentials = {
    credentials: [ 
        { key: "UserName", value: "user@domain.com" },
        { key: "Password", value: "password-value" }
    ]
};

let res = await client.api('/servicePrincipals/{id}/synchronization/jobs/{id}/validateCredentials')
	.version('beta')
	.post(validateCredentials);

```