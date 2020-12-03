---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  accountEnabled: true,
  displayName: "Adele Vance",
  mailNickname: "AdeleV",
  userPrincipalName: "AdeleV@contoso.onmicrosoft.com",
  "passwordProfile" : {
    forceChangePasswordNextSignIn: true,
    password: "xWwvJ]6NMw+bWH-d"
  }
};

let res = await client.api('/users')
	.version('beta')
	.post(user);

```