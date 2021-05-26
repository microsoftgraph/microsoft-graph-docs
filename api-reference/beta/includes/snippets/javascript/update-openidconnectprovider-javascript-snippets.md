---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  responseType: 'id_token'
};

await client.api('/identity/identityProviders/OIDC-V1-Nam_AD_Test-3e393390-ed2d-4794-97f6-5c999ccc61f7')
	.version('beta')
	.update(identityProviderBase);

```