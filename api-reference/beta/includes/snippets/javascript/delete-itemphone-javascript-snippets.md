---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/users/{userId}/profile/phones/{itemPhoneId}')
	.version('beta')
	.delete();

```