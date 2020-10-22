---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const b2cAuthenticationMethodsPolicy = {
    isEmailPasswordAuthenticationEnabled: false,
    isUserNameAuthenticationEnabled: true
};

let res = await client.api('/policies/b2cAuthenticationMethodsPolicy')
	.version('beta')
	.update(b2cAuthenticationMethodsPolicy);

```