---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/me/mailFolders/{id}/messages/delta')
	.version('beta')
	.get();

```