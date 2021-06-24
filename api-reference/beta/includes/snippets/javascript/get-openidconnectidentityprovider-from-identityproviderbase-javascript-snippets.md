---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProviderBase = await client.api('/identity/identityProviders/OIDC-V1-test-icm-4470de58-86c2-4a3f-a22c-63c9366cd000')
	.version('beta')
	.get();

```