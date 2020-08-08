---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProvider = {
  responseType: "id_token"
};

let res = await client.api('/identityProviders/OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a')
	.version('beta')
	.update(identityProvider);

```