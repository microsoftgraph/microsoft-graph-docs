---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const emailAuthenticationMethod = {
  emailAddress: "kim@contoso.com"
};

let res = await client.api('/users/kim@contoso.com/authentication/emailMethods/3ddfcfc8-9383-446f-83cc-3ab9be4be18f')
	.version('beta')
	.put(emailAuthenticationMethod);

```