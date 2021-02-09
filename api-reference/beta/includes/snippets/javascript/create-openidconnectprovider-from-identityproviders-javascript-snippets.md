---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProvider = {
  @odata.type: "microsoft.graph.openIdConnectProvider",
    name: "Login with the Contoso identity provider",
    type: "OpenIDConnect",
    clientId: "56433757-cadd-4135-8431-2c9e3fd68ae8",
    clientSecret: "12345",
    claimsMapping: {
        userId: "myUserId",
        givenName: "myGivenName",
        surname: "mySurname",
        email: "myEmail",
        displayName: "myDisplayName"
    },
    domainHint: "mycustomoidc",
    metadataUrl: "https://mycustomoidc.com/.well-known/openid-configuration",
    responseMode: "form_post",
    responseType: "code",
    scope: "openid"
};

let res = await client.api('/identityProviders')
	.version('beta')
	.post(identityProvider);

```