---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
  displayName: "John Smith",
  identities: [
    {
      signInType: "userName",
      issuer: "contoso.onmicrosoft.com",
      issuerAssignedId: "johnsmith"
    },
    {
      signInType: "emailAddress",
      issuer: "contoso.onmicrosoft.com",
      issuerAssignedId: "jsmith@yahoo.com"
    },
    {
      signInType: "federated",
      issuer: "facebook.com",
      issuerAssignedId: "5eecb0cd"
    }
  ],
  "passwordProfile" : {
    password: "password-value",
    forceChangePasswordNextSignIn: false
  },
  passwordPolicies: "DisablePasswordExpiration"
};

let res = await client.api('/users')
	.post(user);

```