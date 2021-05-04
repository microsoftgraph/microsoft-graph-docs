---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviderBase = {
  displayName: 'Apple'
};

await client.api('/identity/identityProviders/Apple-Managed-OIDC')
	.version('beta')
	.update(identityProviderBase);

```