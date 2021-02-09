---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const phoneAuthenticationMethod = {
  phoneNumber: "+1 2065555555",
  phoneType: "mobile"
};

let res = await client.api('/me/authentication/phoneMethods')
	.version('beta')
	.post(phoneAuthenticationMethod);

```