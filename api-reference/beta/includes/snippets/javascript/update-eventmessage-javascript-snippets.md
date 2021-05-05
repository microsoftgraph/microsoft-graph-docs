---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  isRead: 'true',
};

await client.api('/me/messages/{id}')
	.version('beta')
	.update(message);

```