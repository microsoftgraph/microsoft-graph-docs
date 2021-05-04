---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let itemEmail = await client.api('/users/{userId}/profile/emails/{id}')
	.version('beta')
	.get();

```