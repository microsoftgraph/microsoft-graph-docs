---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemPhone = {
  type: 'other'
};

await client.api('/users/{userId}/profile/phones/{id}')
	.version('beta')
	.update(itemPhone);

```