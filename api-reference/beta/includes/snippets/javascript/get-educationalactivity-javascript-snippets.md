---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationalActivity = await client.api('/me/profile/educationalActivities/{id}')
	.version('beta')
	.get();

```