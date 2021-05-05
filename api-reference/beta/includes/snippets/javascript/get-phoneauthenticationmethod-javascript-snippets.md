---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let phoneAuthenticationMethod = await client.api('/me/authentication/phoneMethods/3179e48a-750b-4051-897c-87b9720928f7')
	.version('beta')
	.get();

```