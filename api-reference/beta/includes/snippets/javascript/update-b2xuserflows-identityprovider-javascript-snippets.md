---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const identityProviders = {
  @odata.id: "https://graph.microsoft.com/beta/identityProviders/{id}"
};

let res = await client.api('/identity/b2xUserFlows/{id}/identityProviders/$ref')
	.version('beta')
	.update(identityProviders);

```