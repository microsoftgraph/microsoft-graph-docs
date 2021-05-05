---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemAddress = {
  allowedAudiences: 'me',
  displayName: 'Secret Hideout',
};

await client.api('/users/{userId}/profile/addresses/{id}')
	.version('beta')
	.update(itemAddress);

```